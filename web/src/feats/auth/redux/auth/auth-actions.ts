import AuthService from "@feats/auth/auth-service";
import { AuthState, ErrorAuthStatus, isAuthorizedAuthState } from "@feats/auth/redux/auth/auth-state";
import LocalStorage from "@core/services/local-storage";
import { createAsyncThunk } from "@reduxjs/toolkit";
import { User } from "@feats/auth/entities";
import { RootState } from "@redux/store";
import Cookies from "@core/services/cookies";

export type LoginArgs = {
    username: string,
    password: string,
}

export const login = createAsyncThunk(
    "auth/login",
    async (args: LoginArgs): Promise<AuthState> => {
        const data = await AuthService.login(args)

        // handle error
        if (typeof data === "string") {
            return {
                type: "invalid",
                error: data as ErrorAuthStatus,
            }
        }

        // Save user & tokens
        LocalStorage.user = data.user
        Cookies.token = data.token

        return {
            type: "authorized",
            user: data.user,
        }
    }
)

export type SignupArgs = Omit<User, "id" | "birthday"> & { password: string, birthday: string, }

export const createUser = createAsyncThunk(
    "auth/createUser",
    async (args: SignupArgs): Promise<AuthState> => {
        const data = await AuthService.signup(args)

        // handle error
        if (typeof data === "string") {
            return {
                type: "invalid",
                error: data as ErrorAuthStatus,
            }
        }

        // Save user & tokens
        LocalStorage.user = data.user
        Cookies.token = data.token

        return {
            type: "authorized",
            user: data.user,
        }
    }
)

export const updateUser = createAsyncThunk(
    "auth/updateUser",
    async (args: Partial<User>, {getState}): Promise<AuthState> => {
        const state = (getState() as RootState).auth
        if (!isAuthorizedAuthState(state)) return state
        
        // combine user with args
        const user = {
            ...state.user,
            ...args,
        }
        
        // update user in local storage
        LocalStorage.user = user
        
        return {
            type: "authorized",
            user,
        }
    }
)
