# Copyright (c) 2019, NVIDIA CORPORATION. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM python:3.10

ARG UID=1000

ENV POETRY_VERSION=1.8.2
ENV POETRY_HOME=/opt/poetry
ENV PATH="${PATH}:${POETRY_HOME}/bin"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
    && apt-get install --no-install-recommends -y \
    curl \
    python3-pip \
    jq \
    lsb-release

RUN curl -sSL https://install.python-poetry.org | POETRY_VERSION="${POETRY_VERSION}" POETRY_HOME="${POETRY_HOME}" python -

RUN useradd -u "${UID}" -ms /bin/bash nvs
RUN --mount=type=bind,target=/work poetry config virtualenvs.create false && poetry install -C /work --with docs --no-interaction --no-ansi
