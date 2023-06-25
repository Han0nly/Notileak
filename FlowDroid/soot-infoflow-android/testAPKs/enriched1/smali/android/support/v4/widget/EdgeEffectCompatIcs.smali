.class Landroid/support/v4/widget/EdgeEffectCompatIcs;
.super Ljava/lang/Object;
.source "EdgeEffectCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 3

    .line 62
    move-object v1, p0

    .line 62
    check-cast v1, Landroid/widget/EdgeEffect;

    .line 62
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    return v2
.end method

.method public static finish(Ljava/lang/Object;)V
    .locals 2

    .line 42
    move-object v1, p0

    .line 42
    check-cast v1, Landroid/widget/EdgeEffect;

    .line 42
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 43
    return-void
.end method

.method public static isFinished(Ljava/lang/Object;)Z
    .locals 3

    .line 38
    move-object v1, p0

    .line 38
    check-cast v1, Landroid/widget/EdgeEffect;

    .line 38
    move-object v0, v1

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    return v2
.end method

.method public static newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .line 30
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static onAbsorb(Ljava/lang/Object;I)Z
    .locals 3

    .line 57
    move-object v1, p0

    .line 57
    check-cast v1, Landroid/widget/EdgeEffect;

    .line 57
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 57
    const/4 v2, 0x1

    return v2
.end method

.method public static onPull(Ljava/lang/Object;F)Z
    .locals 3

    .line 46
    move-object v1, p0

    .line 46
    check-cast v1, Landroid/widget/EdgeEffect;

    .line 46
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 46
    const/4 v2, 0x1

    return v2
.end method

.method public static onRelease(Ljava/lang/Object;)Z
    .locals 3

    move-object v1, p0

    check-cast v1, Landroid/widget/EdgeEffect;

    move-object v0, v1

    .line 52
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 53
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    return v2
.end method

.method public static setSize(Ljava/lang/Object;II)V
    .locals 2

    .line 34
    move-object v1, p0

    .line 34
    check-cast v1, Landroid/widget/EdgeEffect;

    .line 34
    move-object v0, v1

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 35
    return-void
.end method
