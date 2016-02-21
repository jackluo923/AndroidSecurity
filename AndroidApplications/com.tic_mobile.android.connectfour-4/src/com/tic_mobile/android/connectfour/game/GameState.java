package com.tic_mobile.android.connectfour.game;

public enum GameState {
    PLAYER0_TO_MOVE(0),
    PLAYER1_TO_MOVE(1),
    PLAYER0_WON(2),
    PLAYER1_WON(3),
    DRAW(4);
    int stateValue;

    private GameState(int stateValue) {
        this.stateValue = stateValue;
    }

    public static GameState getGameStateFromStateValue(int stateValue) {
        GameState[] states = values();
        int index = 0;
        while (index < states.length) {
            if (states[index].stateValue == stateValue) {
                return states[index];
            }
            index++;
        }
        throw new IllegalArgumentException("unknown state value");
    }

    public int getStateValue() {
        return this.stateValue;
    }
}