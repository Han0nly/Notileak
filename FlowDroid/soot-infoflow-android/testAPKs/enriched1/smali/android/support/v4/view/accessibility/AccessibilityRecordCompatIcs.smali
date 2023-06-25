.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddedCount(Ljava/lang/Object;)I
    .locals 3

    .line 39
    move-object v1, p0

    .line 39
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 39
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result v2

    return v2
.end method

.method public static getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .line 43
    move-object v1, p0

    .line 43
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 43
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public static getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .line 47
    move-object v1, p0

    .line 47
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 47
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public static getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .line 51
    move-object v1, p0

    .line 51
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 51
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrentItemIndex(Ljava/lang/Object;)I
    .locals 3

    .line 55
    move-object v1, p0

    .line 55
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 55
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getCurrentItemIndex()I

    move-result v2

    return v2
.end method

.method public static getFromIndex(Ljava/lang/Object;)I
    .locals 3

    .line 59
    move-object v1, p0

    .line 59
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 59
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v2

    return v2
.end method

.method public static getItemCount(Ljava/lang/Object;)I
    .locals 3

    .line 63
    move-object v1, p0

    .line 63
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 63
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    move-result v2

    return v2
.end method

.method public static getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 3

    .line 67
    move-object v1, p0

    .line 67
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 67
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v2

    return-object v2
.end method

.method public static getRemovedCount(Ljava/lang/Object;)I
    .locals 3

    .line 71
    move-object v1, p0

    .line 71
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 71
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result v2

    return v2
.end method

.method public static getScrollX(Ljava/lang/Object;)I
    .locals 3

    .line 75
    move-object v1, p0

    .line 75
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 75
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollX()I

    move-result v2

    return v2
.end method

.method public static getScrollY(Ljava/lang/Object;)I
    .locals 3

    .line 79
    move-object v1, p0

    .line 79
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 79
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollY()I

    move-result v2

    return v2
.end method

.method public static getSource(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 83
    move-object v1, p0

    .line 83
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 83
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    return-object v2
.end method

.method public static getText(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 87
    move-object v1, p0

    .line 87
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 87
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getToIndex(Ljava/lang/Object;)I
    .locals 3

    .line 91
    move-object v1, p0

    .line 91
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 91
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v2

    return v2
.end method

.method public static getWindowId(Ljava/lang/Object;)I
    .locals 3

    .line 95
    move-object v1, p0

    .line 95
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 95
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result v2

    return v2
.end method

.method public static isChecked(Ljava/lang/Object;)Z
    .locals 3

    .line 99
    move-object v1, p0

    .line 99
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 99
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isChecked()Z

    move-result v2

    return v2
.end method

.method public static isEnabled(Ljava/lang/Object;)Z
    .locals 3

    .line 103
    move-object v1, p0

    .line 103
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 103
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isEnabled()Z

    move-result v2

    return v2
.end method

.method public static isFullScreen(Ljava/lang/Object;)Z
    .locals 3

    .line 107
    move-object v1, p0

    .line 107
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 107
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isFullScreen()Z

    move-result v2

    return v2
.end method

.method public static isPassword(Ljava/lang/Object;)Z
    .locals 3

    .line 111
    move-object v1, p0

    .line 111
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 111
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isPassword()Z

    move-result v2

    return v2
.end method

.method public static isScrollable(Ljava/lang/Object;)Z
    .locals 3

    .line 115
    move-object v1, p0

    .line 115
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 115
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isScrollable()Z

    move-result v2

    return v2
.end method

.method public static obtain()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 35
    move-object v1, p0

    .line 35
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 35
    move-object v0, v1

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static recycle(Ljava/lang/Object;)V
    .locals 2

    .line 119
    move-object v1, p0

    .line 119
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 119
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    .line 120
    return-void
.end method

.method public static setAddedCount(Ljava/lang/Object;I)V
    .locals 2

    .line 123
    move-object v1, p0

    .line 123
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 123
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 124
    return-void
.end method

.method public static setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 2

    .line 127
    move-object v1, p0

    .line 127
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 127
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public static setChecked(Ljava/lang/Object;Z)V
    .locals 2

    .line 131
    move-object v1, p0

    .line 131
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 131
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 132
    return-void
.end method

.method public static setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 2

    .line 135
    move-object v1, p0

    .line 135
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 135
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public static setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 2

    .line 139
    move-object v1, p0

    .line 139
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 139
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public static setCurrentItemIndex(Ljava/lang/Object;I)V
    .locals 2

    .line 143
    move-object v1, p0

    .line 143
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 143
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 144
    return-void
.end method

.method public static setEnabled(Ljava/lang/Object;Z)V
    .locals 2

    .line 147
    move-object v1, p0

    .line 147
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 147
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 148
    return-void
.end method

.method public static setFromIndex(Ljava/lang/Object;I)V
    .locals 2

    .line 151
    move-object v1, p0

    .line 151
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 151
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 152
    return-void
.end method

.method public static setFullScreen(Ljava/lang/Object;Z)V
    .locals 2

    .line 155
    move-object v1, p0

    .line 155
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 155
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFullScreen(Z)V

    .line 156
    return-void
.end method

.method public static setItemCount(Ljava/lang/Object;I)V
    .locals 2

    .line 159
    move-object v1, p0

    .line 159
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 159
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 160
    return-void
.end method

.method public static setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .locals 2

    .line 163
    move-object v1, p0

    .line 163
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 163
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setParcelableData(Landroid/os/Parcelable;)V

    .line 164
    return-void
.end method

.method public static setPassword(Ljava/lang/Object;Z)V
    .locals 2

    .line 167
    move-object v1, p0

    .line 167
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 167
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 168
    return-void
.end method

.method public static setRemovedCount(Ljava/lang/Object;I)V
    .locals 2

    .line 171
    move-object v1, p0

    .line 171
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 171
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 172
    return-void
.end method

.method public static setScrollX(Ljava/lang/Object;I)V
    .locals 2

    .line 175
    move-object v1, p0

    .line 175
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 175
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 176
    return-void
.end method

.method public static setScrollY(Ljava/lang/Object;I)V
    .locals 2

    .line 179
    move-object v1, p0

    .line 179
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 179
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 180
    return-void
.end method

.method public static setScrollable(Ljava/lang/Object;Z)V
    .locals 2

    .line 183
    move-object v1, p0

    .line 183
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 183
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 184
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    .line 187
    move-object v1, p0

    .line 187
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 187
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method public static setToIndex(Ljava/lang/Object;I)V
    .locals 2

    .line 191
    move-object v1, p0

    .line 191
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 191
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 192
    return-void
.end method
