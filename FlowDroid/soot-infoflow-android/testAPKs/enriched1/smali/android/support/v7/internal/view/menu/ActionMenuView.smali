.class public Landroid/support/v7/internal/view/menu/ActionMenuView;
.super Landroid/support/v7/internal/widget/LinearLayoutICS;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;,
        Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMaxItemHeight:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/LinearLayoutICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const v5, 0x42600000    # 56.0f

    mul-float v4, v5, v3

    float-to-int v6, v4

    iput v6, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMinCellSize:I

    const v5, 0x40800000    # 4.0f

    mul-float v4, v5, v3

    float-to-int v6, v4

    iput v6, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 64
    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    const/4 v0, 0x0

    move v8, v0

    invoke-virtual {p1, p2, v7, v6, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v0, 0x0

    move v8, v0

    const/4 v0, 0x1

    invoke-virtual {v9, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 67
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 9

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object v1, v2

    .line 379
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int/2addr v3, p4

    .line 381
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    .line 382
    invoke-static {v3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    instance-of v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-eqz v4, :cond_3

    move-object v6, p0

    check-cast v6, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    move-object v5, v6

    :goto_0
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    .line 388
    :goto_1
    const/4 p4, 0x0

    if-lez p2, :cond_2

    if-eqz v4, :cond_0

    .line 388
    const/4 v7, 0x2

    if-lt p2, v7, :cond_2

    .line 390
    :cond_0
    mul-int p3, p1, p2

    const v7, -0x80000000

    invoke-static {p3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 392
    invoke-virtual {p0, p4, v3}, Landroid/view/View;->measure(II)V

    .line 394
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 395
    div-int p4, p3, p1

    .line 396
    rem-int/2addr p3, p1

    if-eqz p3, :cond_1

    .line 397
    add-int/lit8 p4, p4, 0x1

    :cond_1
    if-eqz v4, :cond_2

    .line 397
    const/4 v7, 0x2

    if-ge p4, v7, :cond_2

    .line 400
    const/4 p4, 0x2

    .line 404
    :cond_2
    iget-boolean v8, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v8, :cond_5

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    .line 405
    :goto_2
    iput-boolean v4, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 407
    iput p4, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 408
    mul-int p3, p4, p1

    const v7, 0x40000000    # 2.0f

    invoke-static {p3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p0, p3, v3}, Landroid/view/View;->measure(II)V

    .line 411
    return p4

    .line 384
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 386
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 404
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 54

    move/from16 v0, p2

    .line 126
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    move/from16 v0, p1

    .line 127
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move/from16 v0, p2

    .line 128
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    move-object/from16 v0, p0

    .line 130
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    .line 131
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v8

    add-int v10, v9, v8

    const v11, 0x40000000    # 2.0f

    if-ne v4, v11, :cond_0

    sub-int v9, v6, v10

    const v11, 0x40000000    # 2.0f

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 138
    :goto_0
    sub-int v13, v5, v7

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMinCellSize:I

    div-int p2, v13, v9

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMinCellSize:I

    rem-int p1, v13, v9

    if-nez p2, :cond_1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 360
    :goto_1
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    sub-int v9, v6, v10

    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    const v11, -0x80000000

    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMinCellSize:I

    div-int v7, p1, p2

    add-int p1, v9, v7

    move/from16 v14, p2

    .line 153
    const/4 v5, 0x0

    .line 154
    const/4 v8, 0x0

    .line 155
    const/4 v15, 0x0

    .line 156
    const/4 v7, 0x0

    const/16 v16, 0x0

    .line 160
    const-wide/16 v17, 0x0

    move-object/from16 v0, p0

    .line 162
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v19

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    .line 165
    const/16 v11, 0x8

    if-ne v9, v11, :cond_3

    .line 163
    :cond_2
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    move/from16 v22, v0

    .line 170
    add-int/lit8 v7, v7, 0x1

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v24, v0

    const/4 v11, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    move-object/from16 v0, v21

    .line 178
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v28, v26

    check-cast v28, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v27, v28

    const/4 v11, 0x0

    move-object/from16 v0, v27

    iput-boolean v11, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    const/4 v11, 0x0

    move-object/from16 v0, v27

    iput v11, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v11, 0x0

    move-object/from16 v0, v27

    iput v11, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v11, 0x0

    move-object/from16 v0, v27

    iput-boolean v11, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    const/4 v11, 0x0

    move-object/from16 v0, v27

    iput v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v11, 0x0

    move-object/from16 v0, v27

    iput v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v22, :cond_7

    move-object/from16 v30, v21

    check-cast v30, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    move-object/from16 v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v31

    if-eqz v31, :cond_7

    const/16 v31, 0x1

    :goto_4
    move/from16 v0, v31

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_8

    const/16 p2, 0x1

    :goto_5
    move-object/from16 v0, v21

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v12, v10}, Landroid/support/v7/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result p2

    move/from16 v0, p2

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_5

    .line 195
    add-int/lit8 v15, v15, 0x1

    :cond_5
    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_6

    const/16 v16, 0x1

    :cond_6
    sub-int v14, v14, p2

    move-object/from16 v0, v21

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_2

    const/4 v11, 0x1

    shl-int v24, v11, v20

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v32, v0

    or-long v17, v17, v32

    goto/16 :goto_3

    :cond_7
    const/16 v31, 0x0

    goto :goto_4

    :cond_8
    move/from16 p2, v14

    .line 188
    goto :goto_5

    :cond_9
    if-eqz v16, :cond_b

    const/4 v11, 0x2

    if-ne v7, v11, :cond_b

    const/16 v22, 0x1

    :goto_6
    const/16 v31, 0x0

    :goto_7
    if-lez v15, :cond_f

    if-lez v14, :cond_f

    .line 217
    const v20, 0x7fffffff

    .line 218
    const-wide/16 v32, 0x0

    .line 219
    const/4 v10, 0x0

    const/16 v24, 0x0

    :goto_8
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v0, v34

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v36, v26

    check-cast v36, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v35, v36

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v37, v0

    if-nez v37, :cond_c

    .line 220
    :cond_a
    :goto_9
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    :cond_b
    const/16 v22, 0x0

    goto :goto_6

    :cond_c
    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v20, v0

    const/4 v11, 0x1

    shl-int v38, v11, v24

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v32, v0

    .line 233
    const/4 v10, 0x1

    goto :goto_9

    :cond_d
    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/4 v11, 0x1

    shl-int v38, v11, v24

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v39, v0

    or-long v32, v32, v39

    .line 236
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_e
    or-long v17, v17, v32

    if-le v10, v14, :cond_14

    :cond_f
    if-nez v16, :cond_19

    .line 241
    const/4 v11, 0x1

    if-ne v7, v11, :cond_19

    const/16 v16, 0x1

    :goto_a
    if-lez v14, :cond_21

    const-wide/16 v42, 0x0

    cmp-long v41, v17, v42

    if-eqz v41, :cond_21

    add-int/lit8 v24, v7, -0x1

    move/from16 v0, v24

    if-lt v14, v0, :cond_10

    if-nez v16, :cond_10

    const/4 v11, 0x1

    if-le v8, v11, :cond_21

    :cond_10
    move-wide/from16 v0, v17

    .line 279
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v44, v0

    if-nez v16, :cond_12

    const-wide/16 v42, 0x1

    and-long v39, v42, v17

    const-wide/16 v42, 0x0

    cmp-long v41, v39, v42

    if-eqz v41, :cond_11

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .line 285
    move-object/from16 v45, v26

    .line 285
    check-cast v45, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    .line 285
    move-object/from16 v35, v45

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v37, v0

    if-nez v37, :cond_11

    const v46, 0x3f000000    # 0.5f

    sub-float v44, v44, v46

    :cond_11
    add-int/lit8 v38, v19, -0x1

    const/4 v11, 0x1

    shl-int v24, v11, v38

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v39, v0

    and-long v39, v39, v17

    const-wide/16 v42, 0x0

    cmp-long v41, v39, v42

    if-eqz v41, :cond_12

    .line 290
    add-int/lit8 v24, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .line 291
    move-object/from16 v47, v26

    .line 291
    check-cast v47, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    .line 291
    move-object/from16 v35, v47

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v37, v0

    if-nez v37, :cond_12

    const v46, 0x3f000000    # 0.5f

    sub-float v44, v44, v46

    :cond_12
    const/16 v46, 0x0

    cmpl-float v41, v44, v46

    if-lez v41, :cond_1a

    mul-int v24, v14, p1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v48, v0

    div-float v48, v48, v44

    move/from16 v0, v48

    float-to-int v15, v0

    :goto_b
    const/16 v24, 0x0

    :goto_c
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_20

    const/4 v11, 0x1

    shl-int v38, v11, v24

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v39, v0

    and-long v39, v39, v17

    const-wide/16 v42, 0x0

    cmp-long v41, v39, v42

    if-nez v41, :cond_1b

    .line 300
    :cond_13
    :goto_d
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 248
    :cond_14
    add-int/lit8 v24, v20, 0x1

    const/16 v38, 0x0

    :goto_e
    move/from16 v0, v38

    move/from16 v1, v19

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v0, v34

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v49, v26

    check-cast v49, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v35, v49

    const/4 v11, 0x1

    shl-int v23, v11, v38

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v39, v0

    and-long v39, v39, v32

    const-wide/16 v42, 0x0

    cmp-long v41, v39, v42

    if-nez v41, :cond_16

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    const/4 v11, 0x1

    shl-int v23, v11, v38

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v50, v0

    or-long v17, v17, v50

    .line 250
    :cond_15
    :goto_f
    add-int/lit8 v38, v38, 0x1

    goto :goto_e

    :cond_16
    if-eqz v22, :cond_17

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v37, v0

    if-eqz v37, :cond_17

    const/4 v11, 0x1

    if-ne v14, v11, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v23, v0

    add-int v23, v23, p1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v20, v0

    const/4 v11, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v23

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_17
    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v35

    iput v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v11, 0x1

    move-object/from16 v0, v35

    iput-boolean v11, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 267
    add-int/lit8 v14, v14, -0x1

    goto :goto_f

    :cond_18
    const/16 v31, 0x1

    goto/16 :goto_7

    :cond_19
    const/16 v16, 0x0

    goto/16 :goto_a

    .line 297
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_b

    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v0, v34

    .line 306
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v52, v26

    check-cast v52, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v35, v52

    move-object/from16 v0, v34

    instance-of v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    move/from16 v37, v0

    if-eqz v37, :cond_1d

    move-object/from16 v0, v35

    iput v15, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v11, 0x1

    move-object/from16 v0, v35

    iput-boolean v11, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v24, :cond_1c

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v37, v0

    if-nez v37, :cond_1c

    .line 314
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v35

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_1c
    const/16 v31, 0x1

    goto/16 :goto_d

    :cond_1d
    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v37, v0

    if-eqz v37, :cond_1e

    move-object/from16 v0, v35

    iput v15, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v11, 0x1

    move-object/from16 v0, v35

    iput-boolean v11, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 320
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v35

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/16 v31, 0x1

    goto/16 :goto_d

    :cond_1e
    if-eqz v24, :cond_1f

    .line 327
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v35

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 329
    :cond_1f
    add-int/lit8 v38, v19, -0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-eq v0, v1, :cond_13

    .line 330
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v35

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_d

    .line 335
    :cond_20
    const/4 v14, 0x0

    :cond_21
    if-eqz v31, :cond_23

    const/16 v24, 0x0

    :goto_10
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_23

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v0, v34

    .line 342
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v53, v26

    check-cast v53, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v35, v53

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v37, v0

    if-nez v37, :cond_22

    .line 340
    :goto_11
    add-int/lit8 v24, v24, 0x1

    goto :goto_10

    :cond_22
    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, p1

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v23, v0

    add-int v7, v38, v23

    const v11, 0x40000000    # 2.0f

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-virtual {v0, v1, v12}, Landroid/view/View;->measure(II)V

    goto :goto_11

    :cond_23
    const v11, 0x40000000    # 2.0f

    if-eq v4, v11, :cond_24

    .line 355
    move v6, v5

    :cond_24
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 359
    mul-int v24, v14, p1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 3

    .line 509
    new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    .line 509
    const/4 v1, -0x2

    .line 509
    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 512
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .line 517
    new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 6

    instance-of v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_1

    .line 523
    new-instance v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object v3, p1

    check-cast v3, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object v2, v3

    invoke-direct {v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 524
    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz v4, :cond_0

    const/16 v5, 0x10

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 529
    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 35
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 35
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 35
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 35
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .line 538
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 540
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 9

    .line 556
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 557
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 558
    const/4 v3, 0x0

    .line 559
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    instance-of v4, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v4, :cond_0

    .line 560
    move-object v6, v1

    .line 560
    check-cast v6, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .line 560
    move-object v5, v6

    invoke-interface {v5}, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v4

    const/4 v7, 0x0

    or-int v3, v7, v4

    :cond_0
    if-lez p1, :cond_1

    instance-of v4, v2, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v4, :cond_1

    .line 563
    move-object v8, v2

    .line 563
    check-cast v8, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .line 563
    move-object v5, v8

    invoke-interface {v5}, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v4

    or-int/2addr v3, v4

    .line 565
    :cond_1
    return v3
.end method

.method public initialize(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 552
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 553
    return-void
.end method

.method public invokeItem(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 3

    .line 544
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v1

    return v1
.end method

.method public isExpandedFormat()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 500
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 80
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 81
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 84
    :cond_0
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 86
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 88
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 90
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 495
    invoke-super {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onDetachedFromWindow()V

    .line 496
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 497
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-nez v3, :cond_1

    .line 417
    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onLayout(ZIIII)V

    .line 491
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    .line 421
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v4

    .line 422
    add-int v5, p3, p5

    div-int/lit8 v6, v5, 0x2

    move-object/from16 v0, p0

    .line 423
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getSupportDividerWidth()I

    move-result v7

    .line 426
    const/4 v8, 0x0

    .line 427
    sub-int v9, p4, p2

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int v5, v9, v5

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v5, v9

    const/16 p1, 0x0

    .line 429
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 431
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v9

    .line 431
    const/16 v12, 0x8

    if-ne v9, v12, :cond_2

    .line 429
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 435
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object/from16 v15, v13

    check-cast v15, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v14, v15

    iget-boolean v3, v14, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_4

    .line 437
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/internal/view/menu/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int v16, v16, v7

    .line 441
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    move-object/from16 v0, p0

    .line 442
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v17

    sub-int v9, v9, v17

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v17, v0

    sub-int v17, v9, v17

    .line 443
    sub-int v18, v17, v16

    .line 444
    div-int/lit8 v9, p5, 0x2

    sub-int v9, v6, v9

    .line 445
    add-int p3, v9, p5

    move/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, p3

    invoke-virtual {v11, v0, v9, v1, v2}, Landroid/view/View;->layout(IIII)V

    sub-int v5, v5, v16

    const/16 p1, 0x1

    .line 450
    goto :goto_2

    .line 451
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int v9, v9, v17

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v17, v0

    add-int v17, v9, v17

    sub-int v5, v5, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/internal/view/menu/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 457
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 457
    :cond_6
    const/4 v12, 0x1

    if-ne v4, v12, :cond_7

    if-nez p1, :cond_7

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 464
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 465
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 466
    sub-int v17, p4, p2

    div-int/lit8 v18, v17, 0x2

    .line 467
    div-int/lit8 v17, v9, 0x2

    sub-int v17, v18, v17

    .line 468
    div-int/lit8 v16, v5, 0x2

    sub-int v16, v6, v16

    add-int v5, v16, v5

    .line 469
    add-int v9, v17, v9

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1, v9, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :cond_7
    if-eqz p1, :cond_9

    const/4 v9, 0x0

    :goto_3
    sub-int v17, v8, v9

    if-lez v17, :cond_a

    div-int v5, v5, v17

    :goto_4
    const/4 v12, 0x0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    move-object/from16 v0, p0

    .line 476
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v16

    .line 477
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 479
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object/from16 v20, v13

    check-cast v20, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v19, v20

    .line 480
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v9

    .line 480
    const/16 v12, 0x8

    if-eq v9, v12, :cond_8

    move-object/from16 v0, v19

    iget-boolean v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_b

    .line 477
    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 473
    :cond_9
    const/4 v9, 0x1

    goto :goto_3

    .line 474
    :cond_a
    const/4 v5, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v0, v19

    .line 484
    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v9, v16, v9

    .line 485
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 486
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 487
    div-int/lit8 v18, v8, 0x2

    sub-int v18, v6, v18

    add-int v8, v18, v8

    .line 488
    add-int v10, v9, v16

    move/from16 v0, v18

    invoke-virtual {v11, v9, v0, v10, v8}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, v19

    .line 489
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v16, v8, v16

    add-int v16, v16, v17

    add-int v16, v9, v16

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 95
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 96
    const v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 98
    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v0, v3, :cond_0

    const/4 v2, 0x0

    move v1, v2

    .line 99
    iput v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 104
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 105
    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v3, :cond_1

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    iget v5, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v5, :cond_1

    .line 106
    iput v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 107
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 110
    :cond_1
    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v3, :cond_3

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 122
    :goto_1
    return-void

    :cond_2
    const/4 v3, 0x0

    .line 96
    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v5

    .line 115
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_4

    .line 116
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 117
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object v8, v9

    const/4 v2, 0x0

    move v10, v2

    .line 118
    iput v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v2, 0x0

    move v10, v2

    iput v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 120
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onMeasure(II)V

    goto :goto_1
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 504
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 505
    return-void
.end method

.method public setPresenter(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    .line 71
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    .line 72
    return-void
.end method
