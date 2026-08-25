package com.rmsl.juce;

import android.content.Context;

// Binary-compatible entry point used by JUCE's Android Java support.
public final class Java {
    static {
        System.loadLibrary("vmpc2000xl_Standalone");
    }

    private Java() {
    }

    public static native void initialiseJUCE(Context applicationContext);
}
