.class final Landroid/support/v4/widget/ViewDragHelper$1;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ViewDragHelper$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "null"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 328
    const v1, 0x3f800000    # 1.0f

    .line 328
    sub-float v0, p1, v1

    .line 329
    mul-float p1, v0, v0

    mul-float/2addr p1, v0

    mul-float/2addr p1, v0

    mul-float v0, p1, v0

    const v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method
