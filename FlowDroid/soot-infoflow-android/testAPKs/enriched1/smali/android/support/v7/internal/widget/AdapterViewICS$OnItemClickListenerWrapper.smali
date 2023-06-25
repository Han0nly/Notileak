.class Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListenerWrapper;
.super Ljava/lang/Object;
.source "AdapterViewICS.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/AdapterViewICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnItemClickListenerWrapper"
.end annotation


# instance fields
.field private final mWrappedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;

.field final synthetic this$0:Landroid/support/v7/internal/widget/AdapterViewICS;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;)V
    .locals 0

    .line 265
    iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListenerWrapper;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListenerWrapper;->mWrappedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;

    .line 267
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 271
    iget-object v6, p0, Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListenerWrapper;->mWrappedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;

    iget-object v7, p0, Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListenerWrapper;->this$0:Landroid/support/v7/internal/widget/AdapterViewICS;

    move-object v0, v6

    move-object v1, v7

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;->onItemClick(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/view/View;IJ)V

    .line 272
    return-void
.end method
