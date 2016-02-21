package com.tic_mobile.android.connectfour;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;

public class GameParameters {
    public static final int COLOR_SCHEME_BLUE_GREEN = 2;
    public static final int COLOR_SCHEME_GREEN_BLUE = 3;
    public static final int COLOR_SCHEME_RED_YELLOW = 0;
    public static final int COLOR_SCHEME_YELLOW_RED = 1;
    public static final int DEFAULT_COLOR_SCHEME = 0;
    public static final int DEFAULT_ERROR_MARGIN = 10;
    public static final String DEFAULT_PLAYER_NAME = "You";
    public static final int DEFAULT_SEARCH_DEPTH = 3;
    public static final int DEFAULT_STARTING_PLAYER = 0;
    private int colorScheme;
    private int errorMargin;
    private String playerName;
    private int searchDepth;
    private int startingPlayer;

    public GameParameters() {
        this.colorScheme = 0;
        this.errorMargin = 10;
        this.searchDepth = 3;
        this.startingPlayer = 0;
        this.playerName = DEFAULT_PLAYER_NAME;
    }

    public GameParameters(SharedPreferences preferences) {
        this.colorScheme = preferences.getInt("colorScheme", DEFAULT_COLOR_SCHEME);
        this.errorMargin = preferences.getInt("errorMargin", DEFAULT_ERROR_MARGIN);
        this.searchDepth = preferences.getInt("searchDepth", DEFAULT_SEARCH_DEPTH);
        this.startingPlayer = preferences.getInt("startingPlayer", DEFAULT_COLOR_SCHEME);
        this.playerName = preferences.getString("playerName", DEFAULT_PLAYER_NAME);
    }

    public GameParameters(Bundle bundle) {
        this.colorScheme = bundle.getInt("colorScheme", DEFAULT_COLOR_SCHEME);
        this.errorMargin = bundle.getInt("errorMargin", DEFAULT_ERROR_MARGIN);
        this.searchDepth = bundle.getInt("searchDepth", DEFAULT_SEARCH_DEPTH);
        this.startingPlayer = bundle.getInt("startingPlayer", DEFAULT_COLOR_SCHEME);
        this.playerName = bundle.getString("playerName");
        if (this.playerName == null) {
            this.playerName = DEFAULT_PLAYER_NAME;
        }
    }

    public static GameParameters fromBundle(Bundle bundle) {
        return new GameParameters(bundle);
    }

    public static GameParameters fromPreferences(SharedPreferences preferences) {
        return new GameParameters(preferences);
    }

    public int getColorScheme() {
        return this.colorScheme;
    }

    public int getErrorMargin() {
        return this.errorMargin;
    }

    public String getPlayerName() {
        return this.playerName;
    }

    public int getSearchDepth() {
        return this.searchDepth;
    }

    public int getStartingPlayer() {
        return this.startingPlayer;
    }

    public void setColorScheme(int colorScheme) {
        this.colorScheme = colorScheme;
    }

    public void setErrorMargin(int errorMargin) {
        this.errorMargin = errorMargin;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public void setSearchDepth(int searchDepth) {
        this.searchDepth = searchDepth;
    }

    public void setStartingPlayer(int startingPlayer) {
        this.startingPlayer = startingPlayer;
    }

    public Bundle toBundle() {
        return toBundle(new Bundle());
    }

    public Bundle toBundle(Bundle bundle) {
        bundle.putInt("colorScheme", this.colorScheme);
        bundle.putInt("errorMargin", this.errorMargin);
        bundle.putInt("searchDepth", this.searchDepth);
        bundle.putInt("startingPlayer", this.startingPlayer);
        bundle.putString("playerName", this.playerName);
        return bundle;
    }

    public void toPreferences(SharedPreferences preferences) {
        Editor editor = preferences.edit();
        editor.putInt("colorScheme", this.colorScheme);
        editor.putInt("errorMargin", this.errorMargin);
        editor.putInt("searchDepth", this.searchDepth);
        editor.putInt("startingPlayer", this.startingPlayer);
        editor.putString("playerName", this.playerName);
        editor.commit();
    }

    public String toString() {
        String str = ",";
        String str2 = ",";
        str2 = ",";
        str2 = ",";
        str2 = ",";
        str2 = ",";
        return ((((("GameParams=(" + "colorScheme=" + this.colorScheme + str) + "errorMargin=" + this.errorMargin + str) + "searchDepth=" + this.searchDepth + str) + "startingPlayer=" + this.startingPlayer + str) + "playerName=" + this.playerName + str) + ")";
    }
}