from celery import shared_task


@shared_task
def demo_task():
    print('Task has been executed')
    return True
