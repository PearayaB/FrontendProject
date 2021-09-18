import { configureStore } from '@reduxjs/toolkit';
import ingredientReducer from './reducers/ingredientReducer';
import nationReducer from './reducers/nationReducer';
export default configureStore({
    reducer: {
        ingredient: ingredientReducer,
        nation: nationReducer
    }
});