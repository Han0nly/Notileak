.class abstract Landroid/support/v7/internal/widget/AbsSpinnerICS;
.super Landroid/support/v7/internal/widget/AdapterViewICS;
.source "AbsSpinnerICS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/AbsSpinnerICS$1;,
        Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;,
        Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/internal/widget/AdapterViewICS",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field mBlockLayoutRequests:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewICS;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionLeftPadding:I

    .line 42
    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionTopPadding:I

    .line 43
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionRightPadding:I

    .line 44
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionBottomPadding:I

    .line 45
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 47
    new-instance v2, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;

    invoke-direct {v2, p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;-><init>(Landroid/support/v7/internal/widget/AbsSpinnerICS;)V

    iput-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;

    .line 55
    invoke-direct {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->initAbsSpinner()V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AdapterViewICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionLeftPadding:I

    .line 42
    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionTopPadding:I

    .line 43
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionRightPadding:I

    .line 44
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionBottomPadding:I

    .line 45
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 47
    new-instance v2, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;

    invoke-direct {v2, p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;-><init>(Landroid/support/v7/internal/widget/AbsSpinnerICS;)V

    iput-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;

    .line 64
    invoke-direct {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->initAbsSpinner()V

    .line 65
    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/internal/widget/AbsSpinnerICS;Landroid/view/View;Z)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setWillNotDraw(Z)V

    .line 73
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 231
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 231
    const/4 v1, -0x1

    .line 231
    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 34
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 310
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 315
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 4

    .line 288
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 289
    iget v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I

    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 291
    return-object v2

    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 17

    move/from16 v0, p1

    .line 147
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    move-object/from16 v0, p0

    .line 151
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    .line 152
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingTop()I

    move-result v5

    move-object/from16 v0, p0

    .line 153
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingRight()I

    move-result v6

    move-object/from16 v0, p0

    .line 154
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingBottom()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionLeftPadding:I

    if-le v4, v9, :cond_6

    :goto_0
    iput v4, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionTopPadding:I

    if-le v5, v9, :cond_7

    :goto_1
    iput v5, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionRightPadding:I

    if-le v6, v9, :cond_8

    :goto_2
    iput v6, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionBottomPadding:I

    if-le v7, v9, :cond_9

    :goto_3
    iput v7, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDataChanged:Z

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    .line 166
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->handleDataChanged()V

    .line 169
    :cond_0
    const/4 v5, 0x0

    .line 170
    const/4 v6, 0x0

    .line 171
    const/4 v10, 0x1

    move-object/from16 v0, p0

    .line 173
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v11}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v9

    if-ge v4, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;

    invoke-virtual {v12, v4}, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-interface {v11, v4, v14, v0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    :cond_1
    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;

    invoke-virtual {v12, v4, v13}, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->put(ILandroid/view/View;)V

    :cond_2
    if-eqz v13, :cond_4

    .line 188
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    if-nez v15, :cond_3

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mBlockLayoutRequests:Z

    move-object/from16 v0, p0

    .line 190
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mBlockLayoutRequests:Z

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v13, v1, v2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->measureChild(Landroid/view/View;II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildHeight(Landroid/view/View;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    add-int v5, v9, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildWidth(Landroid/view/View;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->right:I

    add-int v6, v9, v6

    .line 198
    const/4 v10, 0x0

    :cond_4
    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    add-int v5, v9, v5

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v8, Landroid/graphics/Rect;->right:I

    add-int v6, v9, v3

    :cond_5
    move-object/from16 v0, p0

    .line 210
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, p0

    .line 211
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v0, p2

    invoke-static {v9, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->resolveSize(II)I

    move-result v7

    move/from16 v0, p1

    invoke-static {v3, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setMeasuredDimension(II)V

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mHeightMeasureSpec:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mWidthMeasureSpec:I

    .line 219
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionLeftPadding:I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionTopPadding:I

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionRightPadding:I

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 9

    move-object v1, p1

    check-cast v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;

    move-object v0, v1

    .line 410
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewICS;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 412
    iget-wide v2, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->selectedId:J

    const-wide/16 v5, 0x0

    cmp-long v4, v2, v5

    if-ltz v4, :cond_0

    .line 413
    const/4 v7, 0x1

    .line 413
    iput-boolean v7, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDataChanged:Z

    .line 414
    const/4 v7, 0x1

    .line 414
    iput-boolean v7, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNeedSync:Z

    .line 415
    iget-wide v2, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncRowId:J

    .line 416
    iget v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->position:I

    iput v8, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncPosition:I

    const/4 v7, 0x0

    iput v7, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncMode:I

    .line 418
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->requestLayout()V

    .line 420
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    .line 395
    invoke-super {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 396
    new-instance v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 397
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->selectedId:J

    .line 398
    iget-wide v4, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->selectedId:J

    const-wide/16 v7, 0x0

    cmp-long v6, v4, v7

    if-ltz v6, :cond_0

    .line 399
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getSelectedItemPosition()I

    move-result v9

    iput v9, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->position:I

    .line 403
    return-object v1

    :cond_0
    const/4 v10, -0x1

    iput v10, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->position:I

    return-object v1
.end method

.method public pointToPosition(II)I
    .locals 6

    .line 327
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mTouchFrame:Landroid/graphics/Rect;

    .line 330
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mTouchFrame:Landroid/graphics/Rect;

    .line 333
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildCount()I

    move-result v1

    .line 334
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 335
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 336
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 337
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 338
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 339
    iget v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 343
    return v3

    .line 334
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 334
    :cond_2
    const/4 v5, -0x1

    return v5
.end method

.method recycleAllViews()V
    .locals 6

    .line 237
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildCount()I

    move-result v0

    .line 238
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;

    .line 239
    iget v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I

    .line 242
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 243
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 244
    add-int v5, v2, v3

    .line 245
    invoke-virtual {v1, v5, v4}, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->put(ILandroid/view/View;)V

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 303
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 304
    invoke-super {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->requestLayout()V

    .line 306
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .line 125
    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDataChanged:Z

    .line 126
    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNeedSync:Z

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->removeAllViewsInLayout()V

    .line 129
    const/4 v0, -0x1

    .line 129
    iput v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedPosition:I

    const-wide v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedRowId:J

    const/4 v0, -0x1

    .line 132
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setSelectedPositionInt(I)V

    const/4 v0, -0x1

    .line 133
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setNextSelectedPositionInt(I)V

    .line 134
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->invalidate()V

    .line 135
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 2

    .line 34
    move-object v1, p1

    .line 34
    check-cast v1, Landroid/widget/SpinnerAdapter;

    .line 34
    move-object v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 8

    const/4 v0, -0x1

    .line 83
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 85
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->resetList()V

    .line 88
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 90
    const/4 v3, -0x1

    .line 90
    iput v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedPosition:I

    const-wide v4, -0x8000000000000000L

    iput-wide v4, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedRowId:J

    .line 93
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 94
    iget v6, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I

    iput v6, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldItemCount:I

    .line 95
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v6

    iput v6, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I

    .line 96
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->checkFocus()V

    .line 98
    new-instance v7, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;

    invoke-direct {v7, p0}, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;-><init>(Landroid/support/v7/internal/widget/AdapterViewICS;)V

    iput-object v7, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 99
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 101
    iget v6, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I

    if-lez v6, :cond_1

    const/4 v0, 0x0

    .line 103
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setSelectedPositionInt(I)V

    .line 104
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setNextSelectedPositionInt(I)V

    .line 106
    iget v6, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I

    if-nez v6, :cond_2

    .line 108
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->checkSelectionChanged()V

    .line 118
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->requestLayout()V

    .line 119
    return-void

    .line 112
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->checkFocus()V

    .line 113
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->resetList()V

    .line 115
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->checkSelectionChanged()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setNextSelectedPositionInt(I)V

    .line 262
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->requestLayout()V

    .line 263
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->invalidate()V

    .line 264
    return-void
.end method

.method public setSelection(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I

    if-gt v0, p1, :cond_0

    iget v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildCount()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 p2, 0x1

    .line 256
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setSelectionInt(IZ)V

    .line 257
    return-void

    .line 254
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2

    .line 275
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedPosition:I

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mBlockLayoutRequests:Z

    .line 277
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I

    sub-int v0, p1, v0

    .line 278
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setNextSelectedPositionInt(I)V

    .line 279
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->layout(IZ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mBlockLayoutRequests:Z

    .line 282
    :cond_0
    return-void
.end method
