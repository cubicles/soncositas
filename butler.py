# created by cubicles

class butler():
    def __init__(self, description, date, misc):
        self.description = description
        self.date = date
        self.misc = misc

if __name__ == '__main__':
    # variables
    DESCRIPTION = "This is a gift from me to my dear love <3"
    DATE = '2024-06-15'
    MISC = 'fluff'
    
    # object call
    obj = butler(description=DESCRIPTION,
                 date=DATE,
                 misc=MISC,)

    # some prints
    from loguru import logger

    logger.info(f'{obj.description}')
    logger.info(f'Anniversary date: {obj.date}')

    

    


