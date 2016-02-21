package com.brightcove.player.media;

import com.brightcove.player.model.Playlist;

public interface PlaylistListener extends ErrorListener {
    void onPlaylist(Playlist playlist);
}