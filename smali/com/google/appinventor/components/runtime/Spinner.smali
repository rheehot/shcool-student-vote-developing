.class public final Lcom/google/appinventor/components/runtime/Spinner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A spinner component that displays a pop-up with a list of elements. These elements can be set in the Designer or Blocks Editor by setting the<code>ElementsFromString</code> property to a string-separated concatenation (for example, <em>choice 1, choice 2, choice 3</em>) or by setting the <code>Elements</code> property to a List in the Blocks editor. Spinners are created with the first item already selected. So selecting  it does not generate an After Picking event. Consequently it\'s useful to make the  first Spinner item be a non-choice like \"Select from below...\". </p>"
    docUri = "user-interface/listpicker-+-listview-+-spinner-+-checkbox#spinner"
    iconName = "images/spinner.png"
    nonVisible = false
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field public static final DEFAULT_MODE:I = 0x1


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private items:Lcom/google/appinventor/components/runtime/util/YailList;

.field private mode:I

.field private oldAdapterCount:I

.field private oldSelectionIndex:I

.field private view:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 50
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->SpinnerMode(I)V

    .line 58
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->Prompt(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldSelectionIndex:I

    .line 60
    return-void
.end method

.method private setAdapterData([Ljava/lang/String;)V
    .locals 3
    .param p1, "theItems"    # [Ljava/lang/String;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldAdapterCount:I

    .line 196
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Landroid/widget/ArrayAdapter;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method public AfterSelecting(Ljava/lang/String;)V
    .locals 3
    .param p1, "selection"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event called after the user selects an item from the dropdown list."
    .end annotation

    .prologue
    .line 235
    const-string v0, "AfterSelecting"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public DisplayDropdown()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "displays the dropdown list for selection, same action as when the user clicks on the spinner."
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 228
    return-void
.end method

.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "returns a list of text elements to be picked from."
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .param p1, "itemList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "adds the passed text element to the Spinner list"
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    .line 180
    :cond_0
    :goto_0
    const-string v0, "Spinner"

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elements(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 181
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->setAdapterData([Ljava/lang/String;)V

    .line 182
    return-void

    .line 177
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    goto :goto_0
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemstring"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "sets the Spinner list to the elements passed in the comma-separated string"
    .end annotation

    .prologue
    .line 191
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsFromString(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 192
    return-void
.end method

.method public Prompt()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text with the current title for the Spinner window. Only meaningful when mode is DIALOG"
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Prompt(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "sets the Spinner window prompt to the given title. Only meaningful when mode is DIALOG"
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the current selected item in the spinner "
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the selected item in the spinner"
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectedIndexFromValue(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    .line 130
    return-void
.end method

.method public SelectionIndex()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The index of the currently selected item, starting at 1. If no item is selected, the value will be 0."
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    return v0
.end method

.method public SelectionIndex(I)V
    .locals 3
    .param p1, "index"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the spinner selection to the element at the given index.If an attempt is made to set this to a number less than 1 or greater than the number of items in the Spinner, SelectionIndex will be set to 0, and Selection will be set to empty."
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldSelectionIndex:I

    .line 151
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v2}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 152
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 153
    .local v0, "spinnerText":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 154
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    :cond_0
    return-void
.end method

.method public SpinnerMode()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return mode value which decides whether the Spinner displays the list with a dropdown or a dialog"
    .end annotation

    .prologue
    .line 105
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->mode:I

    return v0
.end method

.method public SpinnerMode(I)V
    .locals 8
    .param p1, "mode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "spinner_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Decide that Spinner display the list with a dropdown or a dialog"
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 71
    new-instance v3, Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spinner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    if-eqz p1, :cond_0

    if-ne p1, v5, :cond_1

    :cond_0
    move v5, p1

    :cond_1
    invoke-direct {v3, v6, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 77
    .local v3, "spinner":Landroid/widget/Spinner;
    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spinner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x1090008

    invoke-direct {v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Landroid/widget/ArrayAdapter;

    .line 78
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Landroid/widget/ArrayAdapter;

    const v6, 0x1090012

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 79
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 80
    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 82
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    if-eqz v5, :cond_2

    .line 83
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 84
    .local v4, "vg":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 85
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v2

    .line 86
    .local v2, "selected":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->Prompt()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "prompt":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    .line 90
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    invoke-static {}, Lcom/google/appinventor/components/runtime/LinearLayout;->defaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/Spinner;->setAdapterData([Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Spinner;->Prompt(Ljava/lang/String;)V

    .line 100
    .end local v0    # "index":I
    .end local v1    # "prompt":Ljava/lang/String;
    .end local v2    # "selected":I
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :goto_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->mode:I

    .line 101
    return-void

    .line 96
    :cond_2
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    .line 97
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spinner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldAdapterCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldSelectionIndex:I

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldAdapterCount:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Landroid/widget/ArrayAdapter;

    .line 246
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldSelectionIndex:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 247
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    .line 248
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldAdapterCount:I

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_2
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    .line 251
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->Selection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->AfterSelecting(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 257
    return-void
.end method
