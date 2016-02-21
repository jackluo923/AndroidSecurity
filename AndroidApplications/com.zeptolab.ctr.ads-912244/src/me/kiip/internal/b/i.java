package me.kiip.internal.b;

import java.io.UnsupportedEncodingException;
import me.kiip.internal.a.k;
import me.kiip.internal.a.n;
import me.kiip.internal.a.n.a;
import me.kiip.internal.a.n.b;
import org.json.JSONException;
import org.json.JSONObject;

public class i extends j {
    public i(int i, String str, JSONObject jSONObject, b bVar, a aVar) {
        super(i, str, jSONObject == null ? null : jSONObject.toString(), bVar, aVar);
    }

    protected n a(me.kiip.internal.a.i iVar) {
        try {
            return n.a(new JSONObject(new String(iVar.b, e.a(iVar.c))), e.a(iVar));
        } catch (UnsupportedEncodingException e) {
            return n.a(new k(e));
        } catch (JSONException e2) {
            return n.a(new k(e2));
        }
    }
}