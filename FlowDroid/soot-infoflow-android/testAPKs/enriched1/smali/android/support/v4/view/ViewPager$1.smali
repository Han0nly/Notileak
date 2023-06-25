.class final Landroid/support/v4/view/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "null"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v4/view/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v4/view/ViewPager$ItemInfo;Landroid/support/v4/view/ViewPager$ItemInfo;)I
    .locals 2

    .line 119
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v1, p2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    sub-int v1, v0, v1

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 116
    move-object v1, p1

    .line 116
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 116
    move-object v0, v1

    move-object v3, p2

    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/ViewPager$1;->compare(Landroid/support/v4/view/ViewPager$ItemInfo;Landroid/support/v4/view/ViewPager$ItemInfo;)I

    move-result v4

    return v4
.end method
