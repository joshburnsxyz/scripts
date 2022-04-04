import { harmony, colorScheme } from 'simpler-color'

// Generate pallete from a single color
const baseColors = harmony('#0F9B8E');

// Define scheme
const scheme = colorScheme(
  baseColors,
  colors => ({
    primary: colors.primary(40),
    secondary: colors.secondary(40),
    neutral: colors.neutral(40),
    text: colors.neutral(10),
    surface: colors.neutral(98),
    primaryButton: colors.primary(40),
    primaryButtonText: colors.primary(95),
    secondaryButton: colors.secondary(40),
    secondaryButtonText: colors.secondary(95),
  })
)

// print out results
console.info(scheme)
