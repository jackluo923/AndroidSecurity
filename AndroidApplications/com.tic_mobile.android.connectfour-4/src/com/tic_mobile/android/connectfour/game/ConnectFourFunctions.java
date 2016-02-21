package com.tic_mobile.android.connectfour.game;

import android.graphics.Rect;
import com.tic_mobile.android.connectfour.Config;
import com.tic_mobile.android.connectfour.R;
import com.tic_mobile.android.connectfour.widgets.ConnectFourView;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class ConnectFourFunctions {
    private static boolean checkConnected(byte[][] grid, byte length, byte value) {
        if (checkConnectedHorizontal(grid, length, value)) {
            return true;
        }
        if (checkConnectedVertical(grid, length, value)) {
            return true;
        }
        if (checkConnectedDiagonalLeft(grid, length, value)) {
            return true;
        }
        return checkConnectedDiagonalRight(grid, length, value);
    }

    private static boolean checkConnectedDiagonalLeft(byte[][] grid, byte length, byte value) {
        byte startColumn = (byte) (length - 1);
        while (startColumn < (byte) 7) {
            byte startRow = (byte) 0;
            while (startRow < 6 - length + 1) {
                boolean hit = true;
                byte check = (byte) 0;
                while (check < length) {
                    if (grid[startRow + check][startColumn - check] != value) {
                        hit = false;
                        break;
                    } else {
                        check = (byte) (check + 1);
                    }
                }
                if (hit) {
                    return true;
                }
                startRow = (byte) (startRow + 1);
            }
            startColumn = (byte) (startColumn + 1);
        }
        return false;
    }

    private static boolean checkConnectedDiagonalRight(byte[][] grid, byte length, byte value) {
        byte startColumn = (byte) 0;
        while (startColumn < 7 - length + 1) {
            byte startRow = (byte) 0;
            while (startRow < 6 - length + 1) {
                boolean hit = true;
                byte check = (byte) 0;
                while (check < length) {
                    if (grid[startRow + check][startColumn + check] != value) {
                        hit = false;
                        break;
                    } else {
                        check = (byte) (check + 1);
                    }
                }
                if (hit) {
                    return true;
                }
                startRow = (byte) (startRow + 1);
            }
            startColumn = (byte) (startColumn + 1);
        }
        return false;
    }

    private static boolean checkConnectedHorizontal(byte[][] grid, byte length, byte value) {
        byte startColumn = (byte) 0;
        while (startColumn < 7 - length + 1) {
            byte startRow = (byte) 0;
            while (startRow < (byte) 6) {
                boolean hit = true;
                byte checkColumn = startColumn;
                while (checkColumn < startColumn + length) {
                    if (grid[startRow][checkColumn] != value) {
                        hit = false;
                        break;
                    } else {
                        checkColumn = (byte) (checkColumn + 1);
                    }
                }
                if (hit) {
                    return true;
                }
                startRow = (byte) (startRow + 1);
            }
            startColumn = (byte) (startColumn + 1);
        }
        return false;
    }

    private static boolean checkConnectedVertical(byte[][] grid, byte length, byte value) {
        byte startColumn = (byte) 0;
        while (startColumn < (byte) 7) {
            byte startRow = (byte) 0;
            while (startRow < 6 - length + 1) {
                boolean hit = true;
                byte checkRow = startRow;
                while (checkRow < startRow + length) {
                    if (grid[checkRow][startColumn] != value) {
                        hit = false;
                        break;
                    } else {
                        checkRow = (byte) (checkRow + 1);
                    }
                }
                if (hit) {
                    return true;
                }
                startRow = (byte) (startRow + 1);
            }
            startColumn = (byte) (startColumn + 1);
        }
        return false;
    }

    public static byte[][] copyGrid(byte[][] grid) {
        byte[][] copy = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{true, true});
        int row = 0;
        while (row < 6) {
            System.arraycopy(grid[row], 0, copy[row], 0, 7);
            row++;
        }
        return copy;
    }

    private static int evalConnects(byte[][] grid, byte length, byte value) {
        return 0 + evalConnectsVertical(grid, length, value) + evalConnectsHorizontal(grid, length, value) + evalConnectsDiagonalRight(grid, length, value) + evalConnectsDiagonalLeft(grid, length, value);
    }

    private static int evalConnectsDiagonalLeft(byte[][] grid, byte length, byte value) {
        int count = 0;
        byte startColumn = (byte) (length - 1);
        while (startColumn < (byte) 7) {
            byte startRow = (byte) 0;
            while (startRow < 6 - length + 1) {
                int connectCount = 0;
                byte check = (byte) 0;
                while (check < length) {
                    connectCount += grid[startRow + check][startColumn - check];
                    check = (byte) (check + 1);
                }
                if (connectCount == (length - 1) * value) {
                    count += 6 - startRow;
                }
                startRow = (byte) (startRow + 1);
            }
            startColumn = (byte) (startColumn + 1);
        }
        return count;
    }

    private static int evalConnectsDiagonalRight(byte[][] grid, byte length, byte value) {
        int count = 0;
        byte startColumn = (byte) 0;
        while (startColumn < 7 - length + 1) {
            byte startRow = (byte) 0;
            while (startRow < 6 - length + 1) {
                int connectCount = 0;
                byte check = (byte) 0;
                while (check < length) {
                    connectCount += grid[startRow + check][startColumn + check];
                    check = (byte) (check + 1);
                }
                if (connectCount == (length - 1) * value) {
                    count += 6 - startRow;
                }
                startRow = (byte) (startRow + 1);
            }
            startColumn = (byte) (startColumn + 1);
        }
        return count;
    }

    private static int evalConnectsHorizontal(byte[][] grid, byte length, byte value) {
        int count = 0;
        byte startColumn = (byte) 0;
        while (startColumn < 7 - length + 1) {
            byte startRow = (byte) 0;
            while (startRow < (byte) 6) {
                int connectCount = 0;
                byte checkColumn = startColumn;
                while (checkColumn < startColumn + length) {
                    connectCount += grid[startRow][checkColumn];
                    checkColumn = (byte) (checkColumn + 1);
                }
                if (connectCount == (length - 1) * value) {
                    count += 6 - startRow;
                }
                startRow = (byte) (startRow + 1);
            }
            startColumn = (byte) (startColumn + 1);
        }
        return count;
    }

    private static int evalConnectsVertical(byte[][] grid, byte length, byte value) {
        int count = 0;
        byte startColumn = (byte) 0;
        while (startColumn < (byte) 7) {
            byte startRow = (byte) 0;
            while (startRow < 6 - length + 1) {
                int connectCount = 0;
                byte checkRow = startRow;
                while (checkRow < startRow + length) {
                    connectCount += grid[checkRow][startColumn];
                    checkRow = (byte) (checkRow + 1);
                }
                if (connectCount == (length - 1) * value) {
                    count += 6 - startRow;
                }
                startRow = (byte) (startRow + 1);
            }
            startColumn = (byte) (startColumn + 1);
        }
        return count;
    }

    public static int evaluate(byte[][] grid, byte value) {
        switch (value) {
            case R.styleable.com_admob_android_ads_AdView_primaryTextColor:
                if (checkConnected(grid, (byte) 4, (byte) 1)) {
                    return 100;
                }
                return checkConnected(grid, (byte) 4, ConnectFourView.GRID_MARKER_PLAYER1) ? -100 : evalConnects(grid, (byte) 4, (byte) 1) - evalConnects(grid, (byte) 4, ConnectFourView.GRID_MARKER_PLAYER1);
            case Config.ACTIVITY_ID_SPLASH:
                if (checkConnected(grid, (byte) 4, ConnectFourView.GRID_MARKER_PLAYER1)) {
                    return 100;
                }
                return checkConnected(grid, (byte) 4, (byte) 1) ? -100 : evalConnects(grid, (byte) 4, ConnectFourView.GRID_MARKER_PLAYER1) - evalConnects(grid, (byte) 4, (byte) 1);
            default:
                return 0;
        }
    }

    public static List<Rect> getConnects(byte[][] grid, byte length, byte value) {
        List<Rect> connects = new ArrayList();
        connects.addAll(getConnectsVertical(grid, length, value));
        connects.addAll(getConnectsHorizontal(grid, length, value));
        connects.addAll(getConnectsDiagonalRight(grid, length, value));
        connects.addAll(getConnectsDiagonalLeft(grid, length, value));
        return connects;
    }

    private static List<Rect> getConnectsDiagonalLeft(byte[][] grid, byte length, byte value) {
        List<Rect> connects = new ArrayList();
        byte startColumn = (byte) (length - 1);
        while (startColumn < (byte) 7) {
            byte startRow = (byte) 0;
            while (startRow < 6 - length + 1) {
                int connectCount = 0;
                byte check = (byte) 0;
                while (check < length) {
                    connectCount += grid[startRow + check][startColumn - check];
                    check = (byte) (check + 1);
                }
                if (connectCount == value * length) {
                    connects.add(new Rect(startColumn, startRow, startColumn - length + 1, startRow + length - 1));
                }
                startRow = (byte) (startRow + 1);
            }
            startColumn = (byte) (startColumn + 1);
        }
        return connects;
    }

    private static List<Rect> getConnectsDiagonalRight(byte[][] grid, byte length, byte value) {
        List<Rect> connects = new ArrayList();
        byte startColumn = (byte) 0;
        while (startColumn < 7 - length + 1) {
            byte startRow = (byte) 0;
            while (startRow < 6 - length + 1) {
                int connectCount = 0;
                byte check = (byte) 0;
                while (check < length) {
                    connectCount += grid[startRow + check][startColumn + check];
                    check = (byte) (check + 1);
                }
                if (connectCount == value * length) {
                    connects.add(new Rect(startColumn, startRow, startColumn + length - 1, startRow + length - 1));
                }
                startRow = (byte) (startRow + 1);
            }
            startColumn = (byte) (startColumn + 1);
        }
        return connects;
    }

    private static List<Rect> getConnectsHorizontal(byte[][] grid, byte length, byte value) {
        List<Rect> connects = new ArrayList();
        byte startColumn = (byte) 0;
        while (startColumn < 7 - length + 1) {
            byte startRow = (byte) 0;
            while (startRow < (byte) 6) {
                int connectCount = 0;
                byte checkColumn = startColumn;
                while (checkColumn < startColumn + length) {
                    connectCount += grid[startRow][checkColumn];
                    checkColumn = (byte) (checkColumn + 1);
                }
                if (connectCount == value * length) {
                    connects.add(new Rect(startColumn, startRow, startColumn + length - 1, startRow));
                }
                startRow = (byte) (startRow + 1);
            }
            startColumn = (byte) (startColumn + 1);
        }
        return connects;
    }

    private static List<Rect> getConnectsVertical(byte[][] grid, byte length, byte value) {
        List<Rect> connects = new ArrayList();
        byte startColumn = (byte) 0;
        while (startColumn < (byte) 7) {
            byte startRow = (byte) 0;
            while (startRow < 6 - length + 1) {
                int connectCount = 0;
                byte checkRow = startRow;
                while (checkRow < startRow + length) {
                    connectCount += grid[checkRow][startColumn];
                    checkRow = (byte) (checkRow + 1);
                }
                if (connectCount == value * length) {
                    connects.add(new Rect(startColumn, startRow, startColumn, startRow + length - 1));
                }
                startRow = (byte) (startRow + 1);
            }
            startColumn = (byte) (startColumn + 1);
        }
        return connects;
    }

    public static boolean isBegun(byte[][] grid) {
        byte column = (byte) 0;
        while (column < (byte) 7) {
            if (grid[0][column] != 0) {
                return true;
            }
            column = (byte) (column + 1);
        }
        return false;
    }

    public static boolean isValidMove(byte[][] grid, byte column) {
        return grid[5][column] == 0;
    }

    public static void moveToGrid(byte[][] grid, byte column, byte player) {
        byte row = (byte) 0;
        while (row < (byte) 6) {
            if (grid[row][column] == 0) {
                grid[row][column] = player;
                return;
            } else {
                row = (byte) (row + 1);
            }
        }
    }

    public static GameState status(byte[][] grid) {
        if (checkConnected(grid, (byte) 4, (byte) 1)) {
            return GameState.PLAYER0_WON;
        }
        if (checkConnected(grid, (byte) 4, ConnectFourView.GRID_MARKER_PLAYER1)) {
            return GameState.PLAYER1_WON;
        }
        int neutral = 0;
        int player0 = 0;
        int player1 = 0;
        byte row = (byte) 0;
        while (row < (byte) 6) {
            byte column = (byte) 0;
            while (column < (byte) 7) {
                switch (grid[row][column]) {
                    case R.styleable.com_admob_android_ads_AdView_backgroundColor:
                        neutral++;
                        break;
                    case R.styleable.com_admob_android_ads_AdView_primaryTextColor:
                        player0++;
                        break;
                    case Config.ACTIVITY_ID_SPLASH:
                        player1++;
                        break;
                }
                column = (byte) (column + 1);
            }
            row = (byte) (row + 1);
        }
        if (neutral == 0) {
            return GameState.DRAW;
        }
        return player0 > player1 ? GameState.PLAYER1_TO_MOVE : GameState.PLAYER0_TO_MOVE;
    }
}