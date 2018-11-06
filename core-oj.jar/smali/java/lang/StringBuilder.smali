.class public final Ljava/lang/StringBuilder;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuilder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/CharSequence;


# static fields
.field static final serialVersionUID:J = 0x3cd5fb145a4c6acbL


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Ljava/lang/StringBuilder;->count:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/lang/StringBuilder;->value:[C

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v0, p0, Ljava/lang/StringBuilder;->count:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Ljava/lang/StringBuilder;->value:[C

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(D)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(F)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(I)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(J)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Z)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append([C)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append([CII)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public append(D)Ljava/lang/StringBuilder;
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(D)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public append(F)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(F)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public append(I)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(I)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public append(J)Ljava/lang/StringBuilder;
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(J)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public append(Z)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Z)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public append([C)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append([C)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public append([CII)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public bridge synthetic appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendCodePoint(I)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->appendCodePoint(I)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public bridge synthetic capacity()I
    .locals 1

    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->capacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic charAt(I)C
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public bridge synthetic codePointAt(I)I
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic codePointBefore(I)I
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic codePointCount(II)I
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic delete(II)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public delete(II)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->delete(II)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public bridge synthetic deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleteCharAt(I)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->deleteCharAt(I)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public bridge synthetic ensureCapacity(I)V
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V

    return-void
.end method

.method public bridge synthetic getChars(II[CI)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V

    return-void
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic insert(IC)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ID)Ljava/lang/AbstractStringBuilder;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->insert(ID)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(IF)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(IF)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(II)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(IJ)Ljava/lang/AbstractStringBuilder;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(IZ)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(IZ)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(I[C)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(I[CII)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IC)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IC)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public insert(ID)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->insert(ID)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public insert(IF)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IF)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public insert(II)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(II)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public insert(IJ)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->insert(IJ)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public insert(IZ)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IZ)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public insert(I[C)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(I[C)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public insert(I[CII)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(I[CII)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic length()I
    .locals 1

    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public bridge synthetic offsetByCodePoints(II)I
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public bridge synthetic reverse()Ljava/lang/AbstractStringBuilder;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Ljava/lang/StringBuilder;
    .locals 0

    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->reverse()Ljava/lang/AbstractStringBuilder;

    return-object p0
.end method

.method public bridge synthetic setCharAt(IC)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->setCharAt(IC)V

    return-void
.end method

.method public bridge synthetic setLength(I)V
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V

    return-void
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic substring(I)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic substring(II)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Ljava/lang/StringBuilder;->count:I

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    iget v0, p0, Ljava/lang/StringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/StringBuilder;->value:[C

    invoke-static {v2, v0, v1}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trimToSize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V

    return-void
.end method
