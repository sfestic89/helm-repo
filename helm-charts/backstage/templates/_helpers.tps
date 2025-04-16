{{- define "backstage.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{- define "postgresql.fullname" -}}
{{ .Release.Name }}-postgresql
{{- end -}}

{{- define "postgresql.name" -}}
{{ .Release.Name }}-postgresql
{{- end -}}

{{- define "backstage.name" -}}
{{ .Release.Name }}-backstage
{{- end -}}

{{- define "backstage.serviceAccountName" -}}
{{ default (include "backstage.fullname" .) .Values.serviceAccount.name }}
{{- end -}}

{{- define "backstage.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.Version }}
app.kubernetes.io/managed-by: Helm
{{- end -}}