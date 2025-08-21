#!/bin/bash

# List of all page files to update
pages=(
  "src/app/cadastro/page.tsx"
  "src/app/niver/page.tsx"
  "src/app/relatorio/page.tsx"
  "src/app/carteirinha/page.tsx"
  "src/app/grafico/page.tsx"
  "src/app/relatoriolog/page.tsx"
  "src/app/ficha/page.tsx"
  "src/app/documentos/page.tsx"
  "src/app/instrucoes/page.tsx"
  "src/app/duvidas/page.tsx"
  "src/app/sugestao/page.tsx"
  "src/app/termo/page.tsx"
  "src/app/historico/page.tsx"
  "src/app/admin/page.tsx"
)

# Loop through each page and remove the AuthProvider wrapper
for page in "${pages[@]}"; do
  echo "Updating $page..."
  # Remove import line for AuthProvider
  sed -i 's/import { AuthProvider } from "@\/contexts\/auth-context";//g' "$page"
  
  # Remove AuthProvider wrapper
  sed -i 's/<AuthProvider>//g' "$page"
  sed -i 's/<\/AuthProvider>//g' "$page"
done

echo "All pages updated successfully!"
