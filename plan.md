```markdown
# Implementation Plan for Cadastro Page Update

## Overview
We will update the Cadastro page to include new form fields: nome_completo, data_nascimento, endereco, telefone, email, cpf, rg, cargo, status (ativo/inativo) and data_entrada. This update will include state management, inline validation/error handling, and modern UI styling focused on clear typography, spacing, and layout while ensuring accessibility using semantic HTML elements.

## Files to be Modified
1. **src/app/cadastro/page.tsx** – Main file for the Cadastro page where the form will be built.
2. **src/components/ui/input.tsx** (optional) – If using a custom Input component, update it to support error state styling.
3. **src/app/globals.css** – Update/add any custom CSS classes if needed to enhance the form's modern look.

## Step-by-Step Outline

### 1. Update Cadastro Page (src/app/cadastro/page.tsx)
- **Form Structure and Layout**
  - Wrap the form elements in a centered container (e.g., a `<div>` with classes like `max-w-lg mx-auto p-8`).
  - Use semantic HTML with `<form>`, `<fieldset>`, `<label>`, and corresponding `<input>` elements.
- **Input Fields Implementation**
  - Add an input for **nome_completo**: `<input id="nome_completo" type="text" />` with an associated `<label>`.
  - Add an input for **data_nascimento**: `<input id="data_nascimento" type="date" />`.
  - Add an input for **endereco**: `<input id="endereco" type="text" />` or `<textarea>` if extended text is preferred.
  - Add an input for **telefone**: `<input id="telefone" type="tel" />`.
  - Add an input for **email**: `<input id="email" type="email" />`.
  - Add an input for **cpf**: `<input id="cpf" type="text" />`.
  - Add an input for **rg**: `<input id="rg" type="text" />`.
  - Add an input for **cargo**: `<input id="cargo" type="text" />`.
  - Add a dropdown/select for **status**:
    ```jsx
    <select id="status">
      <option value="ativo">Ativo</option>
      <option value="inativo">Inativo</option>
    </select>
    ```
  - Add an input for **data_entrada**: `<input id="data_entrada" type="date" />`.
- **State Management and Type Definitions**
  - Define a TypeScript interface (e.g., `interface CadastroData { nome_completo: string; data_nascimento: string; endereco: string; telefone: string; email: string; cpf: string; rg: string; cargo: string; status: string; data_entrada: string; }`).
  - Use the `useState` hook for each input or a consolidated state object.
- **Validation and Error Handling**
  - Implement onChange handlers to update state and onBlur handlers to validate inputs (e.g., check if email follows a proper regex, required fields are non-empty).
  - Display inline error messages under each field when validation fails. If updating the custom Input component, pass an `error` prop to conditionally apply red borders or error text.
- **Form Submission**
  - Add an onSubmit handler for the form that prevents the default submission.
  - Validate all fields; if any validation fails, prevent submission and display appropriate error messages.
  - On successful validation, proceed with form processing (e.g., log data or send it via an API call).

### 2. (Optional) Update Custom Input Component (src/components/ui/input.tsx)
- Introduce an optional `error` prop that, when true, applies error-specific styling (e.g., red borders, highlighted placeholder text).
- Ensure the component forwards any additional props such as `aria-invalid` for accessibility.

### 3. Update Global Styles (src/app/globals.css)
- Define or update reusable CSS classes for form elements (e.g., input field spacing, label typography, button hover effects).
- Ensure the styling is responsive, clean, and maintains visual hierarchy irrespective of error messages.

### 4. Testing and Integration
- Test the form in a development environment by navigating to `/cadastro`.
- Use browser dev tools and console logs to confirm state updates, validation, and error messages.
- Verify that each input renders correctly and that any validation errors are easily visible with clear instructions for correction.
- Ensure accessibility by checking proper label associations, keyboard navigability, and screen reader readability.

## Summary
- The Cadastro page (src/app/cadastro/page.tsx) will be updated to include 10 new fields with modern, accessible UI elements.
- We will implement state management using useState hooks and define a TypeScript interface for form data.
- Inline error handling with clear, descriptive validation messages will be added.
- Optional enhancements to the custom Input component allow for consistent error styling across the application.
- Global CSS updates will enhance typography, spacing, and layout for a modern form experience.
- Finally, thorough testing will ensure functionality and accessibility to meet real-world application needs.
