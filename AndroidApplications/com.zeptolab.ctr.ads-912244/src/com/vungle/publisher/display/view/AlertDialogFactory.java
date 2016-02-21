package com.vungle.publisher.display.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import com.vungle.log.Logger;
import javax.inject.Singleton;

@Singleton
public class AlertDialogFactory {

    final class AnonymousClass_1 implements OnClickListener {
        final /* synthetic */ com.vungle.publisher.display.view.AlertDialogFactory.a a;

        AnonymousClass_1(com.vungle.publisher.display.view.AlertDialogFactory.a aVar) {
            this.a = aVar;
        }

        public final void onClick(DialogInterface dialogInterface, int i) {
            Logger.d(Logger.AD_TAG, "positive click");
            this.a.a();
        }
    }

    final class AnonymousClass_2 implements OnClickListener {
        final /* synthetic */ com.vungle.publisher.display.view.AlertDialogFactory.a a;

        AnonymousClass_2(com.vungle.publisher.display.view.AlertDialogFactory.a aVar) {
            this.a = aVar;
        }

        public final void onClick(DialogInterface dialogInterface, int i) {
            Logger.d(Logger.AD_TAG, "negative click");
            this.a.b();
        }
    }

    final class AnonymousClass_3 implements OnCancelListener {
        final /* synthetic */ com.vungle.publisher.display.view.AlertDialogFactory.a a;

        AnonymousClass_3(com.vungle.publisher.display.view.AlertDialogFactory.a aVar) {
            this.a = aVar;
        }

        public final void onCancel(DialogInterface dialogInterface) {
            Logger.d(Logger.AD_TAG, "cancel click");
            this.a.c();
        }
    }

    public static interface a {
        void a_();

        void b();

        void c();
    }
}