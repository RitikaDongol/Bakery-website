# Generated by Django 3.2.6 on 2021-08-30 07:36

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('category_name', models.CharField(max_length=250, null=True, validators=[django.core.validators.MinLengthValidator(2)])),
                ('category_description', models.TextField()),
            ],
        ),
    ]
