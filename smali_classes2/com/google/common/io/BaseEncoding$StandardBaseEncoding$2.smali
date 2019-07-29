.class Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;
.super Ljava/lang/Object;
.source "BaseEncoding.java"

# interfaces
.implements Lcom/google/common/io/GwtWorkarounds$ByteInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->decodingStream(Lcom/google/common/io/GwtWorkarounds$CharInput;)Lcom/google/common/io/GwtWorkarounds$ByteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bitBuffer:I

.field bitBufferLength:I

.field hitPadding:Z

.field final paddingMatcher:Lcom/google/common/base/CharMatcher;

.field readChars:I

.field final synthetic this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

.field final synthetic val$reader:Lcom/google/common/io/GwtWorkarounds$CharInput;


# direct methods
.method constructor <init>(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;Lcom/google/common/io/GwtWorkarounds$CharInput;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 646
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->val$reader:Lcom/google/common/io/GwtWorkarounds$CharInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    iput v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    .line 648
    iput v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    .line 649
    iput v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    .line 650
    iput-boolean v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    .line 651
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->padding()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->paddingMatcher:Lcom/google/common/base/CharMatcher;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->val$reader:Lcom/google/common/io/GwtWorkarounds$CharInput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$CharInput;->close()V

    .line 690
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    .line 656
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->val$reader:Lcom/google/common/io/GwtWorkarounds$CharInput;

    invoke-interface {v3}, Lcom/google/common/io/GwtWorkarounds$CharInput;->read()I

    move-result v1

    .line 657
    .local v1, "readChar":I
    if-ne v1, v2, :cond_1

    .line 658
    iget-boolean v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    invoke-static {v3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->access$000(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;)Lcom/google/common/io/BaseEncoding$Alphabet;

    move-result-object v3

    iget v4, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    invoke-virtual {v3, v4}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 659
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid input length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 663
    :cond_1
    iget v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    .line 664
    int-to-char v0, v1

    .line 665
    .local v0, "ch":C
    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->paddingMatcher:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v3, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 666
    iget-boolean v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    invoke-static {v3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->access$000(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;)Lcom/google/common/io/BaseEncoding$Alphabet;

    move-result-object v3

    iget v4, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 668
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Padding cannot start at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 670
    :cond_3
    iput-boolean v5, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    goto :goto_0

    .line 671
    :cond_4
    iget-boolean v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    if-eqz v3, :cond_5

    .line 672
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected padding character but found \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 675
    :cond_5
    iget v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    invoke-static {v4}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->access$000(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;)Lcom/google/common/io/BaseEncoding$Alphabet;

    move-result-object v4

    iget v4, v4, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    shl-int/2addr v3, v4

    iput v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    .line 676
    iget v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    invoke-static {v4}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->access$000(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;)Lcom/google/common/io/BaseEncoding$Alphabet;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    .line 677
    iget v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    invoke-static {v4}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->access$000(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;)Lcom/google/common/io/BaseEncoding$Alphabet;

    move-result-object v4

    iget v4, v4, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    .line 679
    iget v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 680
    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    .line 681
    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    iget v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    shr-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    .end local v0    # "ch":C
    :cond_6
    return v2
.end method
