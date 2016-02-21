package com.jirbo.adcolony;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.Buffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;

public class ADCImage {
    static int mutable_h;
    static int mutable_w;
    Bitmap bitmap;
    Rect dest_rect;
    boolean error;
    int height;
    Bitmap original_bitmap;
    int original_height;
    int original_width;
    Paint paint;
    Rect src_rect;
    int width;

    ADCImage(String str) {
        this(str, 1.0d);
    }

    ADCImage(String str, double d) {
        this(str, d, false);
    }

    ADCImage(String str, double d, boolean z) {
        this.paint = new Paint();
        this.src_rect = new Rect();
        this.dest_rect = new Rect();
        try {
            InputStream fileInputStream = new FileInputStream(str);
            byte[] bArr = new byte[fileInputStream.available()];
            fileInputStream.read(bArr);
            fileInputStream.close();
            this.bitmap = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            this.original_bitmap = this.bitmap;
            this.width = this.bitmap.getWidth();
            this.height = this.bitmap.getHeight();
            this.original_width = this.bitmap.getWidth();
            this.original_height = this.bitmap.getHeight();
            mutable_w = this.original_width;
            mutable_h = this.original_height;
            resize(d);
            if (z) {
                this.bitmap = convertToMutable(this.bitmap);
                int[] iArr = new int[(this.bitmap.getWidth() * this.bitmap.getHeight())];
                this.bitmap.getPixels(iArr, 0, this.bitmap.getWidth(), 0, 0, this.bitmap.getWidth(), this.bitmap.getHeight());
                int i = 0;
                while (i < iArr.length) {
                    if (iArr[i] < 255 && iArr[i] != 0) {
                        iArr[i] = ((iArr[i] >> 1) & 8355711) | -16777216;
                    }
                    i++;
                }
                this.bitmap.setPixels(iArr, 0, this.bitmap.getWidth(), 0, 0, this.bitmap.getWidth(), this.bitmap.getHeight());
                this.original_bitmap = this.bitmap;
            }
            bitmaps.add(this.bitmap);
        } catch (Exception e) {
            e.printStackTrace();
            ADC.log_error("Failed to load image " + str);
            this.error = true;
        }
    }

    ADCImage(String str, int i, int i2) {
        this(str, 1.0d);
        resize(i, i2);
    }

    ADCImage(String str, boolean z) {
        this(str, 1.0d, z);
    }

    public static Bitmap convertToMutable(Bitmap bitmap) {
        try {
            File file = new File(Environment.getExternalStorageDirectory() + File.separator + "temp.tmp");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            int i = mutable_w;
            int i2 = mutable_h;
            Config config = bitmap.getConfig();
            FileChannel channel = randomAccessFile.getChannel();
            Buffer map = channel.map(MapMode.READ_WRITE, 0, (long) (bitmap.getRowBytes() * i2));
            bitmap.copyPixelsToBuffer(map);
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, config);
            try {
                map.position(0);
                createBitmap.copyPixelsFromBuffer(map);
                channel.close();
                randomAccessFile.close();
                file.delete();
                return createBitmap;
            } catch (Exception e) {
                bitmap = createBitmap;
                exception = e;
                exception.printStackTrace();
                return bitmap;
            }
        } catch (Exception e2) {
            Exception exception2 = e2;
            Bitmap bitmap2 = bitmap;
            exception2.printStackTrace();
            return bitmap2;
        }
    }

    void center_within(int i, int i2) {
        set_position((i - this.width) / 2, (i2 - this.height) / 2);
    }

    void draw(Canvas canvas) {
        if (this.bitmap != null && !this.bitmap.isRecycled()) {
            canvas.drawBitmap(this.bitmap, this.src_rect, this.dest_rect, this.paint);
        }
    }

    void draw(Canvas canvas, int i, int i2) {
        set_position(i, i2);
        draw(canvas);
    }

    int[] get_position() {
        return new int[]{this.dest_rect.left, this.dest_rect.top};
    }

    void ninePatch(int i, int i2) {
        if (this.bitmap != null) {
            Bitmap createBitmap = Bitmap.createBitmap(this.original_bitmap, 0, 0, this.original_width / 3, this.original_height);
            Bitmap createBitmap2 = Bitmap.createBitmap(this.original_bitmap, (this.original_width * 2) / 3, 0, this.original_width / 3, this.original_height);
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(Bitmap.createBitmap(this.original_bitmap, this.original_width / 3, 0, this.original_width / 3, this.original_height), i, this.original_height, false);
            int[] iArr = new int[((this.original_width / 3) * this.original_height)];
            int[] iArr2 = new int[((this.original_width / 3) * this.original_height)];
            createBitmap.getPixels(iArr, 0, this.original_width / 3, 0, 0, this.original_width / 3, this.original_height);
            createBitmap2.getPixels(iArr2, 0, this.original_width / 3, 0, 0, this.original_width / 3, this.original_height);
            createScaledBitmap.getPixels(new int[(createScaledBitmap.getWidth() * createScaledBitmap.getHeight())], 0, createScaledBitmap.getWidth(), 0, 0, createScaledBitmap.getWidth(), createScaledBitmap.getHeight());
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (i6 < createScaledBitmap.getHeight()) {
                if (i5 < this.original_width / 3) {
                    if (i4 < iArr.length) {
                        createScaledBitmap.setPixel(i5, i6, iArr[i4]);
                    }
                    i4++;
                } else if (i5 >= createScaledBitmap.getWidth() - this.original_width / 3) {
                    if (i3 < iArr2.length) {
                        createScaledBitmap.setPixel(i5, i6, iArr2[i3]);
                    }
                    i3++;
                }
                i5++;
                if (i5 == createScaledBitmap.getWidth()) {
                    i6++;
                    i5 = 0;
                }
            }
            this.bitmap = createScaledBitmap;
            this.original_bitmap = this.bitmap;
            this.width = this.bitmap.getWidth();
            this.height = this.bitmap.getHeight();
            this.original_width = this.width;
            this.original_height = this.height;
            this.src_rect.right = this.width;
            this.src_rect.bottom = this.height;
        }
    }

    void resize(double d) {
        if (this.bitmap != null && !this.bitmap.isRecycled()) {
            if (d != 1.0d) {
                int width = (int) (((double) this.original_bitmap.getWidth()) * d);
                int height = (int) (((double) this.original_bitmap.getHeight()) * d);
                if (!(width == this.width && height == this.height)) {
                    this.width = width;
                    this.height = height;
                    this.bitmap = Bitmap.createScaledBitmap(this.original_bitmap, this.width, this.height, true);
                    bitmaps.add(this.bitmap);
                }
            }
            this.src_rect.right = this.width;
            this.src_rect.bottom = this.height;
        }
    }

    void resize(int i, int i2) {
        if (this.bitmap != null && !this.bitmap.isRecycled()) {
            if (i != this.width || i2 != this.height) {
                this.bitmap = Bitmap.createScaledBitmap(this.original_bitmap, i, i2, true);
                this.width = i;
                this.height = i2;
                this.src_rect.right = i;
                this.src_rect.bottom = i2;
                bitmaps.add(this.bitmap);
            }
        }
    }

    void set_position(int i, int i2) {
        this.dest_rect.left = i;
        this.dest_rect.top = i2;
        this.dest_rect.right = this.width + i;
        this.dest_rect.bottom = this.height + i2;
    }

    int x() {
        return this.dest_rect.left;
    }

    int y() {
        return this.dest_rect.top;
    }
}