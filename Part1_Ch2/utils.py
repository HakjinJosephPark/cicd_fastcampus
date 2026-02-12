def process_data(data, flag):
    if not isinstance(data, list) or not all(isinstance(i, (int, float)) for i in data):
        raise ValueError("Input 'data' must be a list of numbers.")

    if flag == 'SUM':
        return sum(data)
    elif flag == 'AVG':
        if not data:
            return 0.0  # Handle empty list for average calculation
        return sum(data) / len(data)
    else:
        return None
