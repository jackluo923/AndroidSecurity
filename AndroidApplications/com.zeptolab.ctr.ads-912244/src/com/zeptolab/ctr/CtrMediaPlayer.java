package com.zeptolab.ctr;

import android.media.MediaPlayer;

public class CtrMediaPlayer extends MediaPlayer {
    private int channel;
    public String source;
    public int state;

    CtrMediaPlayer(int i) {
        this.channel = i;
    }

    public int GetChannel() {
        return this.channel;
    }
}