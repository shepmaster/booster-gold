import * as React from 'react';
import { Provider } from 'react-redux';
import { configureStore } from '@reduxjs/toolkit';

import { reducer } from './Gravy/ducks';
import Hello from './Gravy/Hello';

export interface GravyProps {
    name: string;
    count: number;
}

const Gravy: React.FunctionComponent<GravyProps> = props => {
    const store = configureStore({ reducer, preloadedState: props.count })

    return (
        <Provider store={store}>
            <Hello {...props} />
        </Provider >
    );
};

export default Gravy;
