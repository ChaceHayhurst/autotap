from django.core.management.base import BaseCommand
from django.contrib.auth import get_user_model
from django.conf import settings
from backend import models as m

class Command(BaseCommand):
    def handle(self, *args, **options):
        User = get_user_model()
        if not User.objects.filter(username="admin").exists():
            admin_name = "admin"
            admin_email = "admin@example.com"
            admin_password = "password"
            admin = User.objects.create_superuser(admin_name, admin_email, admin_password)
            admin.save()
            self.stdout.write(self.style.SUCCESS('Successfully create superuser "%s"' % admin_name))