import React from "react";
import {
  List,
  Datagrid,
  Edit,
  Create,
  SimpleForm,
  DateField,
  TextField,
  EditButton,
  DisabledInput,
  TextInput,
  LongTextInput,
  DateInput
} from "admin-on-rest";
import BookIcon from "material-ui/svg-icons/action/book";
export const PostIcon = BookIcon;

export const name = "customer";

export const list = props => (
  <List {...props}>
    <Datagrid>
      <TextField source="id" />
      <TextField source="name" />
      <TextField source="email" />
      <TextField source="phone" />
      <TextField source="info" />
      <EditButton basePath="/stock" />
    </Datagrid>
  </List>
);

const Title = ({ record }) => {
  return <span>Post {record ? `"${record.title}"` : ""}</span>;
};

export const edit = props => (
  <Edit title={<Title />} {...props}>
    <SimpleForm>
      <DisabledInput source="id" />
      <TextInput source="name" />
      <TextInput source="email" />
      <TextInput source="phone" />
      <TextInput source="info" />
    </SimpleForm>
  </Edit>
);

export const create = props => (
  <Create title="Create a Post" {...props}>
    <SimpleForm redirect="list">
      <DisabledInput source="id" />
      <TextInput source="name" />
      <TextInput source="email" />
      <TextInput source="phone" />
      <TextInput source="info" />
    </SimpleForm>
  </Create>
);
