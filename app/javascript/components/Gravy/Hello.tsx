import * as React from 'react';
import { useSelector, useDispatch } from 'react-redux';

import { increment, decrement, RootState } from './ducks';

export interface HelloProps {
    name: string;
}

const Hello: React.FunctionComponent<HelloProps> = props => {
    const dispatch = useDispatch();
    const score = useSelector((state: RootState) => state);

    return (
        <>
            <div>Hello {props.name}! You have {score}</div>
            <button onClick={() => dispatch(decrement())}>-</button>
            <button onClick={() => dispatch(increment())}>+</button>
        </>
    )
};

export default Hello;
