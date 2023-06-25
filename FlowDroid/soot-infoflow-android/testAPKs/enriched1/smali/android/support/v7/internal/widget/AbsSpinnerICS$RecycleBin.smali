.class Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;
.super Ljava/lang/Object;
.source "AbsSpinnerICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/AbsSpinnerICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/internal/widget/AbsSpinnerICS;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/AbsSpinnerICS;)V
    .locals 1

    .line 422
    iput-object p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->this$0:Landroid/support/v7/internal/widget/AbsSpinnerICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 8

    .line 442
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    .line 443
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 444
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 445
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    if-eqz v4, :cond_0

    .line 447
    iget-object v6, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->this$0:Landroid/support/v7/internal/widget/AbsSpinnerICS;

    .line 447
    const/4 v7, 0x1

    invoke-static {v6, v4, v7}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->access$100(Landroid/support/v7/internal/widget/AbsSpinnerICS;Landroid/view/View;Z)V

    .line 444
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 451
    return-void
.end method

.method get(I)Landroid/view/View;
    .locals 4

    .line 431
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    if-eqz v2, :cond_0

    .line 434
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 438
    :cond_0
    return-object v2
.end method

.method public put(ILandroid/view/View;)V
    .locals 1

    .line 426
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    return-void
.end method
