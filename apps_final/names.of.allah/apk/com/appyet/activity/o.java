package com.appyet.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.bp;
import com.appyet.manager.bw;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataTheme;
import java.util.List;

final class o
  implements DialogInterface.OnClickListener
{
  o(MainActivity paramMainActivity) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ba).d.b(ba).q.MetadataThemes.get(paramInt)).Guid);
    paramDialogInterface.dismiss();
    ba).m.a();
    a.finish();
    paramDialogInterface = new Intent(a, MainActivity.class);
    paramDialogInterface.addFlags(67108864);
    paramDialogInterface.addFlags(268435456);
    a.startActivity(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */