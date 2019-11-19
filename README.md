# _Pagerduty Incident_ Open Microservice

> This is to create, update and resolve incidents on PagerDuty

[![Open Microservice Specification Version](https://img.shields.io/badge/Open%20Microservice-1.0-477bf3.svg)](https://openmicroservices.org)
[![Open Microservices Spectrum Chat](https://withspectrum.github.io/badge/badge.svg)](https://spectrum.chat/open-microservices)
[![Open Microservices Code of Conduct](https://img.shields.io/badge/Contributor%20Covenant-v1.4%20adopted-ff69b4.svg)](https://github.com/oms-services/.github/blob/master/CODE_OF_CONDUCT.md)
[![Open Microservices Commitzen](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Introduction

This project is an example implementation of the [Open Microservice Specification](https://openmicroservices.org), a standard
originally created at [Storyscript](https://storyscript.io) for building highly-portable "microservices" that expose the
events, actions, and APIs inside containerized software.

## Getting Started

The `oms` command-line interface allows you to interact with Open Microservices. If you're interested in creating an Open
Microservice the CLI also helps validate, test, and debug your `oms.yml` implementation!

See the [oms-cli](https://github.com/microservices/oms) project to learn more!

### Installation

```
npm install -g @microservices/oms
```

## Usage

### Open Microservices CLI Usage

Once you have the [oms-cli](https://github.com/microservices/oms) installed, you can run any of the following commands from
within this project's root directory:

#### Actions

##### createincident

> Create an incident, on success return the creted incident detail, on fail return reason and status code.

##### Action Arguments

| Argument Name | Type     | Required | Default | Description                                                                      |
| :------------ | :------- | :------- | :------ | :------------------------------------------------------------------------------- |
| from          | `string` | `true`   | None    | The email address of a valid user associated with the account making the request |
| incident      | `object` | `true`   | None    | Incident detail for creation.                                                    |
| ACCESS_TOKEN  | `string` | `true`   | None    | basic athorization token.                                                        |

```shell
oms run createincident \
    -a from='*****' \
    -a incident='*****' \
    -e ACCESS_TOKEN=$ACCESS_TOKEN
```

##### getincident

> Show detailed information about an incident.

##### Action Arguments

| Argument Name | Type     | Required | Default | Description                         |
| :------------ | :------- | :------- | :------ | :---------------------------------- |
| id            | `string` | `true`   | None    | Incident id to get incident detail. |
| ACCESS_TOKEN  | `string` | `true`   | None    | basic athorization token.           |

```shell
oms run getincident \
    -a id='*****' \
    -e ACCESS_TOKEN=$ACCESS_TOKEN
```

##### listIncidents

> List existing incidents.

##### Action Arguments

| Argument Name | Type     | Required | Default | Description                                                      |
| :------------ | :------- | :------- | :------ | :--------------------------------------------------------------- |
| timezone      | `string` | `false`  | None    | The timezone code                                                |
| since         | `string` | `false`  | None    | The start of the date                                            |
| until         | `string` | `false`  | None    | The end of the date                                              |
| date_range    | `string` | `false`  | None    | start and end date range                                         |
| incident_key  | `string` | `false`  | None    | search with incident key                                         |
| statuses      | `list`   | `false`  | None    | Return only incidents with the given statuses                    |
| serviceids    | `list`   | `false`  | None    | Returns only the incidents associated with the passed service    |
| userIds       | `list`   | `false`  | None    | Returns only the incidents currently assigned to the passed user |
| ACCESS_TOKEN  | `string` | `true`   | None    | basic athorization token.                                        |

```shell
oms run listIncidents \
    -a timezone='*****' \
    -a since='*****' \
    -a until='*****' \
    -a date_range='*****' \
    -a incident_key='*****' \
    -a statuses='*****' \
    -a serviceids='*****' \
    -a userIds='*****' \
    -e ACCESS_TOKEN=$ACCESS_TOKEN
```

##### getIncidentNotes

> List existing incident notes.

##### Action Arguments

| Argument Name | Type     | Required | Default | Description               |
| :------------ | :------- | :------- | :------ | :------------------------ |
| id            | `string` | `true`   | None    | Id of the incident.       |
| ACCESS_TOKEN  | `string` | `true`   | None    | basic athorization token. |

```shell
oms run getIncidentNotes \
    -a id='*****' \
    -e ACCESS_TOKEN=$ACCESS_TOKEN
```

##### listServices

> Get list existing services.

##### Action Arguments

| Argument Name  | Type     | Required | Default | Description                                       |
| :------------- | :------- | :------- | :------ | :------------------------------------------------ |
| serviceOptions | `object` | `true`   | None    | service options for filter service as per option. |
| ACCESS_TOKEN   | `string` | `true`   | None    | basic athorization token.                         |

```shell
oms run listServices \
    -a serviceOptions='*****' \
    -e ACCESS_TOKEN=$ACCESS_TOKEN
```

##### getService

> Get details about an existing service.

##### Action Arguments

| Argument Name  | Type     | Required | Default | Description                                       |
| :------------- | :------- | :------- | :------ | :------------------------------------------------ |
| id             | `string` | `true`   | None    | Id of the service                                 |
| serviceOptions | `object` | `true`   | None    | service options for filter service as per option. |
| ACCESS_TOKEN   | `string` | `true`   | None    | basic athorization token.                         |

```shell
oms run getService \
    -a id='*****' \
    -a serviceOptions='*****' \
    -e ACCESS_TOKEN=$ACCESS_TOKEN
```

## Contributing

All suggestions in how to improve the specification and this guide are very welcome. Feel free share your thoughts in the
Issue tracker, or even better, fork the repository to implement your own ideas and submit a pull request.

[![Edit pagerduty on CodeSandbox](https://codesandbox.io/static/img/play-codesandbox.svg)](https://codesandbox.io/s/github/oms-services/pagerduty)

This project is guided by [Contributor Covenant](https://github.com/oms-services/.github/blob/master/CODE_OF_CONDUCT.md).
Please read out full [Contribution Guidelines](https://github.com/oms-services/.github/blob/master/CONTRIBUTING.md).

## Additional Resources

- [Install the CLI](https://github.com/microservices/oms) - The OMS CLI helps developers create, test, validate, and build
  microservices.
- [Example OMS Services](https://github.com/oms-services) - Examples of OMS-compliant services written in a variety of
  languages.
- [Example Language Implementations](https://github.com/microservices) - Find tooling & language implementations in Node,
  Python, Scala, Java, Clojure.
- [Storyscript Hub](https://hub.storyscript.io) - A public registry of OMS services.
- [Community Chat](https://spectrum.chat/open-microservices) - Have ideas? Questions? Join us on Spectrum.
