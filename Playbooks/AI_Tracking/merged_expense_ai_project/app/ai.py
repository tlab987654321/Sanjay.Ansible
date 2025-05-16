def categorize_expense(desc):
    desc = desc.lower()
    if "uber" in desc or "taxi" in desc:
        return "Transport"
    elif "food" in desc or "restaurant" in desc:
        return "Food"
    elif "amazon" in desc:
        return "Shopping"
    else:
        return "Misc"