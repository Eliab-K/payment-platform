{{/*
Expand the name of the chart.
*/}}
{{- define "payment-platform.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a fully qualified app name.
*/}}
{{- define "payment-platform.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "payment-platform.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels.
*/}}
{{- define "payment-platform.labels" -}}
app.kubernetes.io/name: {{ include "payment-platform.name" . }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
