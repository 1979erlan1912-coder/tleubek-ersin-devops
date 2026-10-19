FROM alpine:latest
WORKDIR /app
ENV STUDENT_NAME="Ersin" \
    STUDENT_SURNAME="Tleubek" \
    STUDENT_GROUP="IT2-2308" \
    STUDENT_ID="37588"
COPY . /app
CMD echo "================================" && \
    echo "DevOps Student Application" && \
    echo "================================" && \
    echo "Name: $STUDENT_NAME" && \
    echo "Surname: $STUDENT_SURNAME" && \
    echo "Group: $STUDENT_GROUP" && \
    echo "Student ID: $STUDENT_ID" && \
    echo "Application is running successfully!"
