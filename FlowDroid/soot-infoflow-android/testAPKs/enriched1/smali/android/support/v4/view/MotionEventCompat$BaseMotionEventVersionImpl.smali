.class Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseMotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 47
    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPointerId(Landroid/view/MotionEvent;I)I
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 55
    const-string v2, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getX(Landroid/view/MotionEvent;I)F
    .locals 3

    if-nez p2, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0

    .line 62
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 62
    const-string v2, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getY(Landroid/view/MotionEvent;I)F
    .locals 3

    if-nez p2, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 69
    const-string v2, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
