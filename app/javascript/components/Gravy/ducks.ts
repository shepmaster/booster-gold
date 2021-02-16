import { createSlice, PayloadAction, Action } from '@reduxjs/toolkit';
import { ThunkAction } from 'redux-thunk';

interface SetCount {
    count: number;
}

const slice = createSlice({
    name: 'counter',
    initialState: 0,
    reducers: {
        increment: state => state + 1,
        decrement: state => state - 1,
        setCount: (state, action: PayloadAction<SetCount>) => { console.log(action); return action.payload.count },
    }
});

export const { reducer } = slice;
export const { increment, decrement } = slice.actions;
const { setCount } = slice.actions;

type AppThunk = ThunkAction<void, RootState, unknown, Action<string>>;

interface ApiNotification {
    count: number,
    id: number,
    name: string,
}

export const submit = (): AppThunk => async (dispatch, getState) => {
    const count = getState();

    const url = '/notifications/1';
    const body: Partial<ApiNotification> = { count };

    const csrf = document.querySelector("meta[name='csrf-token']").getAttribute("content");

    const r = await fetch(url, {
        method: 'PATCH',
        body: JSON.stringify(body),
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
            'X-CSRF-Token': csrf,
        },
    });
    const j = await r.json();

    // todo actual check
    const j2 = j as ApiNotification;
    dispatch(setCount(j2));
}

export type RootState = ReturnType<typeof reducer>;
