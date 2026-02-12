# Lecture02: Running Experiments

## Before Starting
- What am I measuring exactly?
- What factors influence it?
- How many repetitions?
- Which variables to change?
- Which to control?
- Need baseline for comparison

## Hypothesis
- State before collecting data (important)
- Make it falsifiable (Popper)
- Define success criteria
- Specify expected effect

## Workflow
```
Design → Implement → Pilot → Collect → Analyze → Interpret → Document
```
Iterate if needed

## Documentation (Critical following previous lecture)
Record immediately:
- Date, time, duration
- Hardware specs
- Software versions
- Environment conditions
- All parameters
- Unexpected events
- Why you made decisions

Lab notebook = evidence

## Measurement Protocol
- Warm-up: discard first runs
- System reaches steady state
- JIT compilation, cache warming
- Identical conditions
- Cool-down between runs
- Monitor system state
- Timestamp everything

## Control Environment
Isolate:
- Close unnecessary programs
- Disable background services
- Lock CPU frequency
- Disable power management
- Network isolation

Monitor:
- CPU usage, temperature
- Memory, disk I/O
- Network activity

Document:
- OS version
- Kernel parameters
- Compiler flags
- Library versions
- Hardware specs

## Common Mistakes
- Too few reps → can't estimate variance
- Change multiple variables → can't find cause
- No baseline → nothing to compare
- Ignore noise → confusion
- Poor docs → can't reproduce
- No pilot → wrong setup
- Order effects → need randomization

