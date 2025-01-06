def timeConversion(s):
    time_frame = s[-2:]
    hour = int(s[:2])
    if time_frame == 'PM' and hour != 12:
        hour += 12
    if time_frame == 'AM' and hour == 12:
        hour = 0
    hour_24 = f"{hour:02}"
    minutes_seconds=s[2:-2]
    return (f"{hour_24}{minutes_seconds}")