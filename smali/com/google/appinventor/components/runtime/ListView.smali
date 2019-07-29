.class public final Lcom/google/appinventor/components/runtime/ListView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>This is a visible component that displays a list of text elements. <br> The list can be set using the ElementsFromString property or using the Elements block in the blocks editor. </p>"
    docUri = "user-interface/listpicker-+-listview-+-spinner-+-checkbox#listview"
    iconName = "images/listView.png"
    nonVisible = false
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1000000

.field private static final DEFAULT_ENABLED:Z = false

.field private static final DEFAULT_SELECTION_COLOR:I = -0x333334

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field private static final DEFAULT_TEXT_SIZE:I = 0x16

.field private static final LOG_TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private adapterCopy:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundColor:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private items:Lcom/google/appinventor/components/runtime/util/YailList;

.field private final listViewLayout:Landroid/widget/LinearLayout;

.field private selection:Ljava/lang/String;

.field private selectionColor:I

.field private selectionIndex:I

.field private showFilter:Z

.field private textColor:I

.field private textSize:I

.field private txtSearchBox:Landroid/widget/EditText;

.field private final view:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x1

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 69
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    .line 91
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 92
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 94
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    .line 95
    new-instance v0, Landroid/widget/ListView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->view:Landroid/widget/ListView;

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->view:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->view:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->view:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 99
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    new-instance v0, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setWidth(I)V

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const-string v1, "Search list..."

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 107
    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    new-instance v1, Lcom/google/appinventor/components/runtime/ListView$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ListView$1;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 142
    :goto_0
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/ListView;->Width(I)V

    .line 143
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->BackgroundColor(I)V

    .line 144
    const v0, -0x333334

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->SelectionColor(I)V

    .line 146
    iput v6, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    .line 147
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->TextColor(I)V

    .line 148
    const/16 v0, 0x16

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->textSize:I

    .line 149
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->textSize:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->TextSize(I)V

    .line 150
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->ElementsFromString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->view:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 155
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 156
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method


# virtual methods
.method public AfterPicking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Simple event to be raised after the an element has been chosen in the list. The selected element is available in the Selection property."
    .end annotation

    .prologue
    .line 368
    const-string v0, "AfterPicking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the listview background."
    .end annotation

    .prologue
    .line 396
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 411
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    .line 412
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->setBackgroundColor(I)V

    .line 413
    return-void
.end method

.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .param p1, "itemsList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "List of text elements to show in the ListView.  This willsignal an error if the elements are not text strings."
    .end annotation

    .prologue
    .line 228
    const-string v0, "Listview"

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elements(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 229
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 230
    return-void
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
        description = "The TextView elements specified as a string with the items separated by commas such as: Cheese,Fruit,Bacon,Radish. Each word before the comma will be an element in the list."
    .end annotation

    .prologue
    .line 252
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsFromString(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 253
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 254
    return-void
.end method

.method public Height(I)V
    .locals 1
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the height of the list on the view."
    .end annotation

    .prologue
    .line 171
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 172
    const/4 p1, -0x2

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 175
    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the text last selected in the ListView."
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectedIndexFromValue(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 346
    return-void
.end method

.method public SelectionColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of the item when it is selected."
    .end annotation

    .prologue
    .line 426
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    return v0
.end method

.method public SelectionColor(I)V
    .locals 5
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 442
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    .line 443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->view:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 446
    return-void
.end method

.method public SelectionIndex()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The index of the currently selected item, starting at 1.  If no item is selected, the value will be 0.  If an attempt is made to set this to a number less than 1 or greater than the number of items in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .prologue
    .line 306
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    return v0
.end method

.method public SelectionIndex(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the position of the selected item in the ListView. This could be used to retrievethe text at the chosen position. If an attempt is made to set this to a number less than 1 or greater than the number of items in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 323
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectionFromIndex(ILcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public ShowFilterBar(Z)V
    .locals 2
    .param p1, "showFilter"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets visibility of ShowFilterBar. True will show the bar, False will hide it."
    .end annotation

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public ShowFilterBar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current state of ShowFilterBar for visibility."
    .end annotation

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    return v0
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text color of the listview items."
    .end annotation

    .prologue
    .line 460
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 475
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    .line 476
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 477
    return-void
.end method

.method public TextSize()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview items."
    .end annotation

    .prologue
    .line 488
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->textSize:I

    return v0
.end method

.method public TextSize(I)V
    .locals 1
    .param p1, "fontSize"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "22"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 500
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_0

    .line 501
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->textSize:I

    .line 504
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 505
    return-void

    .line 503
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->textSize:I

    goto :goto_0
.end method

.method public Width(I)V
    .locals 1
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the width of the list on the view."
    .end annotation

    .prologue
    .line 185
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 186
    const/4 p1, -0x2

    .line 188
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 189
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public itemsToColoredText()[Landroid/text/Spannable;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 273
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    .line 274
    .local v5, "size":I
    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->textSize:I

    .line 275
    .local v1, "displayTextSize":I
    new-array v4, v5, [Landroid/text/Spannable;

    .line 276
    .local v4, "objects":[Landroid/text/Spannable;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, v5, :cond_1

    .line 281
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v6, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "itemString":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 285
    .local v0, "chars":Landroid/text/Spannable;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget v7, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v7

    invoke-interface {v0, v6, v8, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 286
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getCompatibilityMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 287
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListView;->textSize:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 289
    :cond_0
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v6, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v7

    invoke-interface {v0, v6, v8, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 290
    add-int/lit8 v6, v2, -0x1

    aput-object v0, v4, v6

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "chars":Landroid/text/Spannable;
    .end local v3    # "itemString":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 354
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 355
    .local v0, "item":Landroid/text/Spannable;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 356
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->adapterCopy:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->AfterPicking()V

    .line 359
    return-void
.end method

.method public setAdapterData()V
    .locals 5

    .prologue
    const v4, 0x1090003

    .line 260
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    .line 261
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->itemsToColoredText()[Landroid/text/Spannable;

    move-result-object v3

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->adapter:Landroid/widget/ArrayAdapter;

    .line 262
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->view:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 264
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->adapterCopy:Landroid/widget/ArrayAdapter;

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->adapterCopy:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->view:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 379
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 381
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->view:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 382
    return-void
.end method
