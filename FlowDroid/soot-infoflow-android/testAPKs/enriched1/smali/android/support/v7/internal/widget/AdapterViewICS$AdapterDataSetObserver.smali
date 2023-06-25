.class Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterViewICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/AdapterViewICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Landroid/support/v7/internal/widget/AdapterViewICS;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/AdapterViewICS;)V
    .locals 1

    .line 796
    iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 844
    return-void
.end method

.method public onChanged()V
    .locals 8

    .line 802
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDataChanged:Z

    .line 803
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    iget-object v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    iget v3, v2, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I

    iput v3, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldItemCount:I

    .line 804
    iget-object v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    iput v3, v2, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I

    .line 808
    iget-object v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v6, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    iget v3, v2, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldItemCount:I

    if-nez v3, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    iget v3, v2, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I

    if-lez v3, :cond_0

    .line 810
    iget-object v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    iget-object v6, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    invoke-static {v2, v6}, Landroid/support/v7/internal/widget/AdapterViewICS;->access$000(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/os/Parcelable;)V

    const/4 v7, 0x0

    iput-object v7, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 815
    :goto_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/AdapterViewICS;->checkFocus()V

    .line 816
    iget-object v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/AdapterViewICS;->requestLayout()V

    .line 817
    return-void

    .line 813
    :cond_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/AdapterViewICS;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 9

    .line 821
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDataChanged:Z

    .line 823
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-static {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->access$100(Landroid/support/v7/internal/widget/AdapterViewICS;)Landroid/os/Parcelable;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 830
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    iget-object v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    iget v6, v5, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I

    iput v6, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldItemCount:I

    .line 831
    iget-object v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    const/4 v1, 0x0

    move v6, v1

    iput v6, v5, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I

    .line 832
    iget-object v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    const/4 v1, -0x1

    iput v1, v5, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I

    .line 833
    iget-object v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    const-wide v7, -0x8000000000000000L

    iput-wide v7, v5, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedRowId:J

    .line 834
    iget-object v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    const/4 v1, -0x1

    iput v1, v5, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedPosition:I

    .line 835
    iget-object v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    const-wide v7, -0x8000000000000000L

    iput-wide v7, v5, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedRowId:J

    .line 836
    iget-object v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    const/4 v1, 0x0

    iput-boolean v1, v5, Landroid/support/v7/internal/widget/AdapterViewICS;->mNeedSync:Z

    .line 838
    iget-object v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/AdapterViewICS;->checkFocus()V

    .line 839
    iget-object v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/AdapterViewICS;->requestLayout()V

    .line 840
    return-void
.end method
