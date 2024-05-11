<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    //
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $users = User::latest();

        if ($request->first_name) {
            $users->where('first_name', 'LIKE','%'. $request->first_name .'%');
        }
        if ($request->gender) {
            $users->where('gender', $request->gender);
        }
        if ($request->date) {
            $users->whereDate('date', $request->date);
        }

        $users = $users->get();

        return response()->json(compact('users'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */


    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try {
            $user = User::findOrFail($id);

            return response()->json([
                'user' => $user
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'message' => 'User not found'
            ], 400);
        }
    }


    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'first_name' => 'string',
            'last_name' => 'string',
            'email' => 'string|email|unique:users,email',
            'date_of_birth' => 'string',
            'gender' => 'string',
            'password' => 'string|min:8',

        ]);

        if ($validator->fails()) return response()->json($validator->errors(), 400);

        try {
            $user = User::findOrFail($id);
        } catch (\Throwable $th) {
            return response()->json([
                'message' => 'User not found'
            ], 400);
        }

        $user->update([
            'first_name' => $request->first_name ? $request->first_name : $user->first_name,
            'last_name' => $request->last_name ?? $user->last_name,
            'email' => $request->email ?? $user->email,
            'date_of_birth' => $request->date_of_birth ?? $user->date_of_birth,
            'gender' => $request->gender ?? $user->gender,
            'password' => $request->password ? bcrypt($request->password) : $user->password,

        ]);

        return response()->json([
            'message' => "User $id modified",
            'user' => $user,

        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $user = User::findOrFail($id);
            $user->delete();
            return response()->json([
                'message' => 'User deleted'
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'message' => 'User not found'
            ], 400);
        }
    }
}
