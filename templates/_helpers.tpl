{{- define "backup.name" -}}
{{- if .Values.namePostfix -}}
{{- printf "%s-%s-%s" .Release.Name .Values.namePostfix "backup" | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name "backup" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "restore.name" -}}
{{- if .Values.namePostfix -}}
{{- printf "%s-%s-%s" .Release.Name .Values.namePostfix "restore" | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name "restore" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "chart.name" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}