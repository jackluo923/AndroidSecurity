package com.wopnersoft.unitconverter.plus.converter;

import android.os.Bundle;
import com.wopnersoft.unitconverter.plus.b.ac;

// compiled from: ProGuard
public class GenericStaticConverter extends ac {
    protected long j;

    protected long b() {
        return this.j;
    }

    protected void onCreate(Bundle bundle) {
        this.j = getIntent().getLongExtra("categoryId", -1);
        super.onCreate(bundle);
        if (this.j == 1073741824) {
            k(getString(2131361873));
        } else if (this.j == 8) {
            k(getString(2131361872));
        } else if (this.j == 1048576) {
            f(getString(2131362786));
            k(getString(2131361872));
        } else if (this.j == 16384) {
            k(getString(2131362617));
        }
    }
}