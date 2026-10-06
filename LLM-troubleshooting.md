# Troubleshooting with an LLM

An LLM (also known as "AI") can help troubleshoot rusEFI using your tune, logs, and firmware source code.

1. **Install a desktop AI app with file access.** Use the ChatGPT or Claude desktop app in a mode that can read local files. Grant access to the folder containing your tune, logs, and source code, and confirm the assistant can read them; mentioning a folder path alone does not grant access.
2. **Download the source code.** Open the [rusEFI repository](https://github.com/rusefi/rusefi) and use **Code → Open with GitHub Desktop**, or **Code → Download ZIP** and extract it locally. Alternatively, run `git clone https://github.com/rusefi/rusefi`. Record your ECU firmware version and use the matching source revision when possible.
3. **Collect evidence.** Save the tune used during the problem and logs that capture it; see the [Logging Guide](Logging-Guide). Include your ECU/engine setup, warnings, recent changes, and when the symptom occurs.
4. **Ask a focused question.** Describe expected versus actual behavior, identify the relevant files and timestamps, and ask for evidence-backed explanations and next checks.
5. **Verify and repeat.** Treat suggestions as hypotheses. Check them against the logs, documentation, and actual hardware; change one thing at a time and capture a new log to confirm the result.
6. **Escalate if needed.** Share a concise symptom description, tune, logs, and checks performed with [Support](Support). Follow the [LLM Policy](LLM-policy) when reporting issues.

Example prompt:

> My engine stalls after warm-up. My tune and logs are in `<data folder>`, and the matching rusEFI source is in `<source folder>`. The stall occurs near `<timestamp>`. Explain what the evidence shows, distinguish facts from hypotheses, and suggest the next checks. Ask for any missing information.
