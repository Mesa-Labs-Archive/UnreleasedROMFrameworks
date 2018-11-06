.class public Ljava/time/format/DateTimeParseException;
.super Ljava/time/DateTimeException;
.source "DateTimeParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x3bbd215ce3915525L


# instance fields
.field private final errorIndex:I

.field private final parsedString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/time/format/DateTimeParseException;->parsedString:Ljava/lang/String;

    iput p3, p0, Ljava/time/format/DateTimeParseException;->errorIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/time/format/DateTimeParseException;->parsedString:Ljava/lang/String;

    iput p3, p0, Ljava/time/format/DateTimeParseException;->errorIndex:I

    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 1

    iget v0, p0, Ljava/time/format/DateTimeParseException;->errorIndex:I

    return v0
.end method

.method public getParsedString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimeParseException;->parsedString:Ljava/lang/String;

    return-object v0
.end method
