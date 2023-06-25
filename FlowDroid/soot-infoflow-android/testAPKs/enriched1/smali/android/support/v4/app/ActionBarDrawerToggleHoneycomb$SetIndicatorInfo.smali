.class Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetIndicatorInfo"
.end annotation


# instance fields
.field public setHomeActionContentDescription:Ljava/lang/reflect/Method;

.field public setHomeAsUpIndicator:Ljava/lang/reflect/Method;

.field public upIndicatorView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 19

    move-object/from16 v0, p0

    .line 103
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-class v2, Landroid/app/ActionBar;

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v3, v4

    :try_start_0
    const-string v7, "setHomeAsUpIndicator"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    .line 107
    const-class v8, Landroid/app/ActionBar;

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v7, "setHomeActionContentDescription"

    invoke-virtual {v8, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v9

    .line 116
    const v4, 0x102002c

    move-object/from16 v0, p1

    .line 116
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 122
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Landroid/view/ViewGroup;

    move-object v12, v13

    .line 123
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    .line 123
    const/4 v4, 0x2

    if-ne v14, v4, :cond_0

    .line 129
    const/4 v4, 0x0

    .line 129
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 130
    const/4 v4, 0x1

    .line 130
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 131
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v14

    .line 131
    const v4, 0x102002c

    if-ne v14, v4, :cond_1

    :goto_1
    instance-of v0, v15, Landroid/widget/ImageView;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 135
    move-object/from16 v18, v15

    .line 135
    check-cast v18, Landroid/widget/ImageView;

    .line 135
    move-object/from16 v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    move-object v15, v10

    .line 131
    goto :goto_1
.end method
