.class public Landroid/support/v4/media/TransportMediator;
.super Landroid/support/v4/media/TransportController;
.source "TransportMediator.java"


# static fields
.field public static final FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40

.field public static final FLAG_KEY_MEDIA_NEXT:I = 0x80

.field public static final FLAG_KEY_MEDIA_PAUSE:I = 0x10

.field public static final FLAG_KEY_MEDIA_PLAY:I = 0x4

.field public static final FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8

.field public static final FLAG_KEY_MEDIA_PREVIOUS:I = 0x1

.field public static final FLAG_KEY_MEDIA_REWIND:I = 0x2

.field public static final FLAG_KEY_MEDIA_STOP:I = 0x20

.field public static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final KEYCODE_MEDIA_RECORD:I = 0x82


# instance fields
.field final mAudioManager:Landroid/media/AudioManager;

.field final mCallbacks:Landroid/support/v4/media/TransportPerformer;

.field final mContext:Landroid/content/Context;

.field final mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

.field final mDispatcherState:Ljava/lang/Object;

.field final mKeyEventCallback:Landroid/view/KeyEvent$Callback;

.field final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/media/TransportStateListener;",
            ">;"
        }
    .end annotation
.end field

.field final mTransportKeyCallback:Landroid/support/v4/media/TransportMediatorCallback;

.field final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/media/TransportPerformer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/media/TransportMediator;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/TransportPerformer;)V

    .line 153
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/TransportPerformer;)V
    .locals 15

    .line 159
    invoke-direct {p0}, Landroid/support/v4/media/TransportController;-><init>()V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    .line 57
    new-instance v2, Landroid/support/v4/media/TransportMediator$1;

    invoke-direct {v2, p0}, Landroid/support/v4/media/TransportMediator$1;-><init>(Landroid/support/v4/media/TransportMediator;)V

    iput-object v2, p0, Landroid/support/v4/media/TransportMediator;->mTransportKeyCallback:Landroid/support/v4/media/TransportMediatorCallback;

    .line 130
    new-instance v3, Landroid/support/v4/media/TransportMediator$2;

    invoke-direct {v3, p0}, Landroid/support/v4/media/TransportMediator$2;-><init>(Landroid/support/v4/media/TransportMediator;)V

    iput-object v3, p0, Landroid/support/v4/media/TransportMediator;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz p1, :cond_1

    move-object/from16 v4, p1

    :goto_0
    iput-object v4, p0, Landroid/support/v4/media/TransportMediator;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    .line 161
    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    .line 162
    iget-object v4, p0, Landroid/support/v4/media/TransportMediator;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/media/AudioManager;

    move-object v7, v8

    iput-object v7, p0, Landroid/support/v4/media/TransportMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->mView:Landroid/view/View;

    .line 164
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mView:Landroid/view/View;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    invoke-static {v0}, Landroid/support/v4/view/KeyEventCompat;->getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v4/media/TransportMediator;->mDispatcherState:Ljava/lang/Object;

    .line 165
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 165
    const/16 v11, 0x12

    if-lt v10, v11, :cond_2

    .line 166
    new-instance v12, Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    iget-object v4, p0, Landroid/support/v4/media/TransportMediator;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/support/v4/media/TransportMediator;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mView:Landroid/view/View;

    move-object/from16 p2, v0

    iget-object v13, p0, Landroid/support/v4/media/TransportMediator;->mTransportKeyCallback:Landroid/support/v4/media/TransportMediatorCallback;

    move-object/from16 v0, p2

    invoke-direct {v12, v4, v7, v0, v13}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/view/View;Landroid/support/v4/media/TransportMediatorCallback;)V

    iput-object v12, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    .line 171
    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p2

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    iput-object v14, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;Landroid/support/v4/media/TransportPerformer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/media/TransportMediator;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/TransportPerformer;)V

    .line 157
    return-void
.end method

.method private getListeners()[Landroid/support/v4/media/TransportStateListener;
    .locals 4

    .line 212
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v2, 0x0

    .line 217
    return-object v2

    .line 215
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Landroid/support/v4/media/TransportStateListener;

    .line 216
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v3
.end method

.method static isMediaKey(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private pushControllerState()V
    .locals 6

    .line 239
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onIsPlaying()Z

    move-result v2

    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onGetCurrentPosition()J

    move-result-wide v3

    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onGetTransportControlFlags()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->refreshState(ZJI)V

    .line 244
    :cond_0
    return-void
.end method

.method private reportPlayingChanged()V
    .locals 4

    .line 221
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->getListeners()[Landroid/support/v4/media/TransportStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 224
    invoke-virtual {v3, p0}, Landroid/support/v4/media/TransportStateListener;->onPlayingChanged(Landroid/support/v4/media/TransportController;)V

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method

.method private reportTransportControlsChanged()V
    .locals 4

    .line 230
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->getListeners()[Landroid/support/v4/media/TransportStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 233
    invoke-virtual {v3, p0}, Landroid/support/v4/media/TransportStateListener;->onTransportControlsChanged(Landroid/support/v4/media/TransportController;)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 341
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->destroy()V

    .line 342
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 200
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->mDispatcherState:Ljava/lang/Object;

    invoke-static {p1, v0, v1, p0}, Landroid/support/v4/view/KeyEventCompat;->dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public getBufferPercentage()I
    .locals 2

    .line 316
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onGetBufferPercentage()I

    move-result v1

    return v1
.end method

.method public getCurrentPosition()J
    .locals 3

    .line 301
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onGetCurrentPosition()J

    move-result-wide v1

    return-wide v1
.end method

.method public getDuration()J
    .locals 3

    .line 296
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onGetDuration()J

    move-result-wide v1

    return-wide v1
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 3

    .line 190
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getTransportControlFlags()I
    .locals 2

    .line 332
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onGetTransportControlFlags()I

    move-result v1

    return v1
.end method

.method public isPlaying()Z
    .locals 2

    .line 311
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onIsPlaying()Z

    move-result v1

    return v1
.end method

.method public pausePlaying()V
    .locals 2

    .line 272
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->pausePlaying()V

    .line 275
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onPause()V

    .line 276
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->pushControllerState()V

    .line 277
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->reportPlayingChanged()V

    .line 278
    return-void
.end method

.method public refreshState()V
    .locals 0

    .line 247
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->pushControllerState()V

    .line 248
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->reportPlayingChanged()V

    .line 249
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->reportTransportControlsChanged()V

    .line 250
    return-void
.end method

.method public registerStateListener(Landroid/support/v4/media/TransportStateListener;)V
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 306
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/TransportPerformer;->onSeekTo(J)V

    .line 307
    return-void
.end method

.method public startPlaying()V
    .locals 2

    .line 258
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->startPlaying()V

    .line 261
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onStart()V

    .line 262
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->pushControllerState()V

    .line 263
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->reportPlayingChanged()V

    .line 264
    return-void
.end method

.method public stopPlaying()V
    .locals 2

    .line 286
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->stopPlaying()V

    .line 289
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onStop()V

    .line 290
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->pushControllerState()V

    .line 291
    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->reportPlayingChanged()V

    .line 292
    return-void
.end method

.method public unregisterStateListener(Landroid/support/v4/media/TransportStateListener;)V
    .locals 1

    .line 208
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method
