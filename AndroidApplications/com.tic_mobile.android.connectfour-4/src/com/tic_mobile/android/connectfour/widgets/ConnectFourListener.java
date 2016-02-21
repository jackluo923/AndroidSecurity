package com.tic_mobile.android.connectfour.widgets;

import com.tic_mobile.android.connectfour.game.GameState;

public interface ConnectFourListener {
    void handleAiProgress(int i, int i2);

    void handleAiRunStatus(boolean z);

    void handleGameFinished(GameState gameState);
}