.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAction(Ljava/lang/Object;I)V
    .locals 2

    .line 43
    move-object v1, p0

    .line 43
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 43
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 44
    return-void
.end method

.method public static addChild(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    .line 47
    move-object v1, p0

    .line 47
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 47
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public static findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 52
    move-object v1, p0

    .line 52
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 52
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method public static getActions(Ljava/lang/Object;)I
    .locals 3

    .line 57
    move-object v1, p0

    .line 57
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 57
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v2

    return v2
.end method

.method public static getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 2

    .line 61
    move-object v1, p0

    .line 61
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 61
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 62
    return-void
.end method

.method public static getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 2

    .line 65
    move-object v1, p0

    .line 65
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 65
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 66
    return-void
.end method

.method public static getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .line 69
    move-object v1, p0

    .line 69
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 69
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getChildCount(Ljava/lang/Object;)I
    .locals 3

    .line 73
    move-object v1, p0

    .line 73
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 73
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    return v2
.end method

.method public static getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .line 77
    move-object v1, p0

    .line 77
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 77
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public static getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .line 81
    move-object v1, p0

    .line 81
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 81
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public static getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .line 85
    move-object v1, p0

    .line 85
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 85
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public static getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 89
    move-object v1, p0

    .line 89
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 89
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .line 93
    move-object v1, p0

    .line 93
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 93
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public static getWindowId(Ljava/lang/Object;)I
    .locals 3

    .line 97
    move-object v1, p0

    .line 97
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 97
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v2

    return v2
.end method

.method public static isCheckable(Ljava/lang/Object;)Z
    .locals 3

    .line 101
    move-object v1, p0

    .line 101
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 101
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    return v2
.end method

.method public static isChecked(Ljava/lang/Object;)Z
    .locals 3

    .line 105
    move-object v1, p0

    .line 105
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 105
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    return v2
.end method

.method public static isClickable(Ljava/lang/Object;)Z
    .locals 3

    .line 109
    move-object v1, p0

    .line 109
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 109
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    return v2
.end method

.method public static isEnabled(Ljava/lang/Object;)Z
    .locals 3

    .line 113
    move-object v1, p0

    .line 113
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 113
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    return v2
.end method

.method public static isFocusable(Ljava/lang/Object;)Z
    .locals 3

    .line 117
    move-object v1, p0

    .line 117
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 117
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    return v2
.end method

.method public static isFocused(Ljava/lang/Object;)Z
    .locals 3

    .line 121
    move-object v1, p0

    .line 121
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 121
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    return v2
.end method

.method public static isLongClickable(Ljava/lang/Object;)Z
    .locals 3

    .line 125
    move-object v1, p0

    .line 125
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 125
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    return v2
.end method

.method public static isPassword(Ljava/lang/Object;)Z
    .locals 3

    .line 129
    move-object v1, p0

    .line 129
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 129
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    return v2
.end method

.method public static isScrollable(Ljava/lang/Object;)Z
    .locals 3

    .line 133
    move-object v1, p0

    .line 133
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 133
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    return v2
.end method

.method public static isSelected(Ljava/lang/Object;)Z
    .locals 3

    .line 137
    move-object v1, p0

    .line 137
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 137
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    return v2
.end method

.method public static obtain()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 39
    move-object v1, p0

    .line 39
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 39
    move-object v0, v1

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static performAction(Ljava/lang/Object;I)Z
    .locals 3

    .line 141
    move-object v1, p0

    .line 141
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 141
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v2

    return v2
.end method

.method public static recycle(Ljava/lang/Object;)V
    .locals 2

    .line 217
    move-object v1, p0

    .line 217
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 217
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 218
    return-void
.end method

.method public static setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 2

    .line 145
    move-object v1, p0

    .line 145
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 145
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 146
    return-void
.end method

.method public static setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 2

    .line 149
    move-object v1, p0

    .line 149
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 149
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 150
    return-void
.end method

.method public static setCheckable(Ljava/lang/Object;Z)V
    .locals 2

    .line 153
    move-object v1, p0

    .line 153
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 153
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 154
    return-void
.end method

.method public static setChecked(Ljava/lang/Object;Z)V
    .locals 2

    .line 157
    move-object v1, p0

    .line 157
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 157
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 158
    return-void
.end method

.method public static setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 2

    .line 161
    move-object v1, p0

    .line 161
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 161
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method public static setClickable(Ljava/lang/Object;Z)V
    .locals 2

    .line 165
    move-object v1, p0

    .line 165
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 165
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 166
    return-void
.end method

.method public static setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 2

    .line 169
    move-object v1, p0

    .line 169
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 169
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public static setEnabled(Ljava/lang/Object;Z)V
    .locals 2

    .line 173
    move-object v1, p0

    .line 173
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 173
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 174
    return-void
.end method

.method public static setFocusable(Ljava/lang/Object;Z)V
    .locals 2

    .line 177
    move-object v1, p0

    .line 177
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 177
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 178
    return-void
.end method

.method public static setFocused(Ljava/lang/Object;Z)V
    .locals 2

    .line 181
    move-object v1, p0

    .line 181
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 181
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 182
    return-void
.end method

.method public static setLongClickable(Ljava/lang/Object;Z)V
    .locals 2

    .line 185
    move-object v1, p0

    .line 185
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 185
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 186
    return-void
.end method

.method public static setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 2

    .line 189
    move-object v1, p0

    .line 189
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 189
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method public static setParent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    .line 193
    move-object v1, p0

    .line 193
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 193
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 194
    return-void
.end method

.method public static setPassword(Ljava/lang/Object;Z)V
    .locals 2

    .line 197
    move-object v1, p0

    .line 197
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 197
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 198
    return-void
.end method

.method public static setScrollable(Ljava/lang/Object;Z)V
    .locals 2

    .line 201
    move-object v1, p0

    .line 201
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 201
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 202
    return-void
.end method

.method public static setSelected(Ljava/lang/Object;Z)V
    .locals 2

    .line 205
    move-object v1, p0

    .line 205
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 205
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 206
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    .line 209
    move-object v1, p0

    .line 209
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 209
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 210
    return-void
.end method

.method public static setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 2

    .line 213
    move-object v1, p0

    .line 213
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 213
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method
