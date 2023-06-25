.class Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;
.super Ljava/lang/Object;
.source "SpinnerICS.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/SpinnerICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SpinnerAdapter;

.field private mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 538
    move-object v2, p1

    .line 538
    check-cast v2, Landroid/widget/ListAdapter;

    .line 538
    move-object v1, v2

    iput-object v1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 540
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 3

    .line 584
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 586
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 588
    return v1

    .line 586
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public getCount()I
    .locals 3

    .line 543
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    .line 543
    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    return v2
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 559
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    .line 559
    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 547
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    .line 547
    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getItemId(I)J
    .locals 5

    .line 551
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    .line 551
    const-wide/16 v1, -0x1

    return-wide v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    return-wide v3
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 555
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 3

    .line 564
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isEmpty()Z
    .locals 2

    .line 614
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 614
    const/4 v1, 0x1

    return v1

    .line 614
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isEnabled(I)Z
    .locals 3

    .line 597
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 599
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    .line 601
    return v1

    .line 599
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 568
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 571
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 574
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 577
    :cond_0
    return-void
.end method
