import { createListenerMiddleware } from "@reduxjs/toolkit";
import { authApi } from "src/services/store/api/authApi.jsx";

export const listenerMiddleware = createListenerMiddleware();

listenerMiddleware.startListening({
    matcher: authApi.endpoints.login.matchFulfilled,
    effect: async (action, listenerApi) => {
        listenerApi.cancelActiveListeners();
        if (action.payload.token && !action.payload.twoFaRequired) {
            localStorage.setItem('token', action.payload.token);
        }
    }
});

listenerMiddleware.startListening({
    matcher: authApi.endpoints.verify2fa.matchFulfilled,
    effect: async (action, listenerApi) => {
        listenerApi.cancelActiveListeners();
        if (action.payload.token) {
            localStorage.setItem('token', action.payload.token);
        }
    }
});