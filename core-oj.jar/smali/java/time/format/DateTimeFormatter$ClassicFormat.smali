.class Ljava/time/format/DateTimeFormatter$ClassicFormat;
.super Ljava/text/Format;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassicFormat"
.end annotation


# instance fields
.field private final formatter:Ljava/time/format/DateTimeFormatter;

.field private final parseType:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/DateTimeFormatter;",
            "Ljava/time/temporal/TemporalQuery",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    iput-object p1, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    iput-object p2, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "obj"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "toAppendTo"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "pos"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v1, p1, Ljava/time/temporal/TemporalAccessor;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Format target must implement TemporalAccessor"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :try_start_0
    iget-object v1, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    check-cast p1, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v1, p1, p2}, Ljava/time/format/DateTimeFormatter;->formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string/jumbo v2, "text"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object v2, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->-wrap1(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/text/ParseException;

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/text/ParseException;

    invoke-virtual {v1}, Ljava/time/format/DateTimeParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/time/format/DateTimeParseException;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string/jumbo v4, "text"

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object v4, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-static {v4, p1, p2}, Ljava/time/format/DateTimeFormatter;->-wrap0(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    if-gez v4, :cond_0

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_0
    return-object v7

    :catch_0
    move-exception v1

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    if-gez v4, :cond_1

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_1
    return-object v7

    :cond_2
    :try_start_1
    iget-object v4, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-static {v4}, Ljava/time/format/DateTimeFormatter;->-get1(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/ResolverStyle;

    move-result-object v4

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-static {v5}, Ljava/time/format/DateTimeFormatter;->-get0(Ljava/time/format/DateTimeFormatter;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/time/format/DateTimeParseContext;->toResolved(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v3

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    if-nez v4, :cond_3

    return-object v3

    :cond_3
    iget-object v4, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    invoke-interface {v3, v4}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    :catch_1
    move-exception v2

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v7
.end method
