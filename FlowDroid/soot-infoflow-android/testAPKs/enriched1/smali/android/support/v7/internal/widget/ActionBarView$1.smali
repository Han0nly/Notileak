.class Landroid/support/v7/internal/widget/ActionBarView$1;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActionBarView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "null"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;)V
    .locals 0

    .line 136
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView$1;->this$0:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/internal/widget/AdapterViewICS",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$1;->this$0:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/ActionBar$OnNavigationListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$1;->this$0:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/ActionBar$OnNavigationListener;

    move-result-object v1

    invoke-interface {v1, p3, p4, p5}, Landroid/support/v7/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    .line 142
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/support/v7/internal/widget/AdapterViewICS;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/internal/widget/AdapterViewICS",
            "<*>;)V"
        }
    .end annotation

    .line 146
    return-void
.end method
