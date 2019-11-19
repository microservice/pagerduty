FROM golang

RUN go get github.com/PagerDuty/go-pagerduty
RUN go get github.com/gorilla/mux

WORKDIR /go/src/github.com/oms-services/pagerduty

ADD . /go/src/github.com/oms-services/pagerduty

RUN go install github.com/oms-services/pagerduty

ENTRYPOINT pagerduty

EXPOSE 5000
